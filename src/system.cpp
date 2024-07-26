#include "system.h"
#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <hls_stream.h>

#include <algorithm>
#include <cmath>
#include <iostream>

using namespace std;

int g_debug_counter = 0;

float_value_t straightLineProjectorFromLayerIJtoK(float_value_t z_i,
                                                  float_value_t z_j,
                                                  int_value_t i, int_value_t j,
                                                  int_value_t k) {

  float_value_t radius_i = 0;
  float_value_t radius_j = 0;
  float_value_t radius_k = 0;

  if (i == 0) {
    radius_i = 0;
  } else {
    radius_i = get_radii(i - 1);
  }
  if (j == 0) {
    radius_j = 0;
  } else {
    radius_j = get_radii(j - 1);
  }
  if (k == 0) {
    radius_k = 0;
  } else {
    radius_k = get_radii(k - 1);
  }

  float_value_t radii_leverArm = (radius_k - radius_i) / (radius_j - radius_i);

  return z_i + (z_j - z_i) * radii_leverArm;
}

// >>>>> PARALLELOGRAMS COMPUTATION <<<<<
z_value_t get_superpoint_min_z(point_t superpoint[NUM_POINTS_IN_SUPERPOINT]) {
  z_value_t min_z = 1ULL << 10;

loop_get_superpoint_min_z:
  for (int i = 0; i < NUM_POINTS_IN_SUPERPOINT; i++) {
    z_value_t z = point_get_z(superpoint[i]);
    if (z < min_z) {
      min_z = z;
    }
  }

  return min_z;
}

z_value_t get_superpoint_max_z(point_t superpoint[NUM_POINTS_IN_SUPERPOINT]) {
  z_value_t max_z = 0x0;

loop_get_superpoint_max_z:
  for (int i = 0; i < NUM_POINTS_IN_SUPERPOINT; i++) {
    z_value_t z = point_get_z(superpoint[i]);
    if (z > max_z) {
      max_z = z;
    }
  }

  return max_z;
}

void getParallelograms(
    point_t superpoints[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
    float_value_t pSlope[NUM_LAYERS],
    float_value_t shadow_bottomL_jR[NUM_LAYERS],
    float_value_t shadow_bottomR_jR[NUM_LAYERS],
    float_value_t shadow_bottomL_jL[NUM_LAYERS],
    float_value_t shadow_bottomR_jL[NUM_LAYERS],
    float_value_t z1_min[NUM_LAYERS], float_value_t z1_max[NUM_LAYERS]) {
  // parallelogram auxiliary variables
  float_value_t pSlope_tmp = 0;

  // compute parallelogram
  z_value_t superpoint_0_min_z = get_superpoint_min_z(superpoints[0]);
  z_value_t superpoint_0_max_z = get_superpoint_max_z(superpoints[0]);
  z_value_t comp_0 = -1 * get_trapezoid_edges(0);
  z_value_t comp_1 = get_trapezoid_edges(0);

  // z_value_t z1_min_tmp = std::max(superpoint_0_min_z, comp_0);
  // z_value_t z1_max_tmp = std::min(superpoint_0_max_z, comp_1);
  z_value_t z1_min_tmp = GET_MAX_VAL_UNIVERSAL(superpoint_0_min_z, comp_0);
  z_value_t z1_max_tmp = GET_MIN_VAL_UNIVERSAL(superpoint_0_max_z, comp_1);

  if (z1_min_tmp > z1_max_tmp) {
    z1_min_tmp = get_trapezoid_edges(0) + 1;
    z1_max_tmp = z1_min_tmp;
  }

loop_compute_parallelogram:
  for (int i = 1; i < NUM_LAYERS; i++) {
    int j = i + 1;

    z_value_t z_j_min = get_superpoint_min_z(superpoints[i]);
    z_value_t z_j_max = get_superpoint_max_z(superpoints[i]);

    float_value_t a = straightLineProjectorFromLayerIJtoK(z1_min_tmp, z_j_max,
                                                          1, j, NUM_LAYERS);
    float_value_t b = straightLineProjectorFromLayerIJtoK(z1_max_tmp, z_j_max,
                                                          1, j, NUM_LAYERS);
    float_value_t c = straightLineProjectorFromLayerIJtoK(z1_min_tmp, z_j_min,
                                                          1, j, NUM_LAYERS);
    float_value_t d = straightLineProjectorFromLayerIJtoK(z1_max_tmp, z_j_min,
                                                          1, j, NUM_LAYERS);

    DEBUG_PRINT_ALL(cout << "----------------------" << endl;
                    cout << "j: " << j << endl;

                    cout << "a: " << a << endl; cout << "b: " << b << endl;
                    cout << "c: " << c << endl; cout << "d: " << d << endl;)

    if (j != NUM_LAYERS) {
      pSlope_tmp = get_parallelogram_slopes(j - 1);
    } else {
      pSlope_tmp = 1ULL << 10;
    }

    DEBUG_PRINT_ALL(cout << "pSlope_tmp: " << pSlope_tmp << endl;)

    // make parallelogram: array index = layer number - 2
    char parallelogram_index = j - 2;
    pSlope[parallelogram_index] = pSlope_tmp;

    z1_min[parallelogram_index] = z1_min_tmp;
    z1_max[parallelogram_index] = z1_max_tmp;

    shadow_bottomL_jR[parallelogram_index] = a;
    shadow_bottomR_jR[parallelogram_index] = b;
    shadow_bottomL_jL[parallelogram_index] = c;
    shadow_bottomR_jL[parallelogram_index] = d;

    DEBUG_PRINT_ALL(cout << "New Parallelogram" << endl;
                    cout << "----------------------" << endl;
                    cout << "Layer number: " << j << endl;
                    cout << "pSlope: " << pSlope[parallelogram_index] << endl;

                    cout << "shadow_bottomL_jR: " << a << endl;
                    cout << "shadow_bottomR_jR: " << b << endl;
                    cout << "shadow_bottomL_jL: " << c << endl;
                    cout << "shadow_bottomR_jL: " << d << endl;

                    cout << "z1_min: " << z1_min[parallelogram_index] << endl;
                    cout << "z1_max: " << z1_max[parallelogram_index] << endl;)
  }

  return;
}
// >>>>> END PARALLELOGRAMS COMPUTATION <<<<<

// >>>>> ACCEPTANCE CORNER CALCULATION <<<<<
/**
 * Acceptance corners are calculated
 * based on the parallelograms
 */

void get_acceptanceCorners(PATCH_BUFFER_ARGS) {
  // tmp corners
  float_value_t a_corner_list[4];
  float_value_t b_corner_list[4];
  float_value_t c_corner_list[4];
  float_value_t d_corner_list[4];

loop_init_acceptance_corners_from_parallelograms:
  for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
    a_corner_list[i] = shadow_bottomL_jR[latest_patch_index][i];
    b_corner_list[i] = shadow_bottomR_jR[latest_patch_index][i];
    c_corner_list[i] = shadow_bottomL_jL[latest_patch_index][i];
    d_corner_list[i] = shadow_bottomR_jL[latest_patch_index][i];
  }

  DEBUG_PRINT_ALL( // print corner lists
      for (int i = 0; i < 4; i++) {
        cout << "a_corner_list[" << i << "]: " << a_corner_list[i] << endl;
        cout << "b_corner_list[" << i << "]: " << b_corner_list[i] << endl;
        cout << "c_corner_list[" << i << "]: " << c_corner_list[i] << endl;
        cout << "d_corner_list[" << i << "]: " << d_corner_list[i] << endl;
      })

  // calculate min_element of corner lists
  float_value_t a_corner_min = FLOAT_VALUE_T_MAX;
  float_value_t b_corner_min = FLOAT_VALUE_T_MAX;
  float_value_t c_corner_max = FLOAT_VALUE_T_MIN;
  float_value_t d_corner_max = FLOAT_VALUE_T_MIN;

loop_calculate_min_max_element_of_corner_lists:
  for (int i = 0; i < 4; i++) {
#pragma HLS PIPELINE II = 1
    if (a_corner_list[i] < a_corner_min) {
      a_corner_min = a_corner_list[i];
    }
    if (b_corner_list[i] < b_corner_min) {
      b_corner_min = b_corner_list[i];
    }
    if (c_corner_list[i] > c_corner_max) {
      c_corner_max = c_corner_list[i];
    }
    if (d_corner_list[i] > d_corner_max) {
      d_corner_max = d_corner_list[i];
    }
  }

  a_corner[latest_patch_index][0] = z1_min[latest_patch_index][0];
  a_corner[latest_patch_index][1] = a_corner_min;
  b_corner[latest_patch_index][0] = z1_max[latest_patch_index][0];
  b_corner[latest_patch_index][1] = b_corner_min;
  c_corner[latest_patch_index][0] = z1_min[latest_patch_index][0];
  c_corner[latest_patch_index][1] = c_corner_max;
  d_corner[latest_patch_index][0] = z1_max[latest_patch_index][0];
  d_corner[latest_patch_index][1] = d_corner_max;

  // print these corners
  DEBUG_PRINT_ALL(cout << "a_corner: " << a_corner[latest_patch_index][0] << " "
                       << a_corner[latest_patch_index][1] << endl;
                  cout << "b_corner: " << b_corner[latest_patch_index][0] << " "
                       << b_corner[latest_patch_index][1] << endl;
                  cout << "c_corner: " << c_corner[latest_patch_index][0] << " "
                       << c_corner[latest_patch_index][1] << endl;
                  cout << "d_corner: " << d_corner[latest_patch_index][0] << " "
                       << d_corner[latest_patch_index][1] << endl;)

  // determine acceptance type
  if (a_corner_min != a_corner_list[NUM_LAYERS - 2]) {
    squareAcceptance[latest_patch_index] = false;
    flatTop[latest_patch_index] = false;
  }

  if (b_corner_min != b_corner_list[NUM_LAYERS - 2]) {
    squareAcceptance[latest_patch_index] = false;
    flatTop[latest_patch_index] = false;
  }

  if (c_corner_max != c_corner_list[NUM_LAYERS - 2]) {
    squareAcceptance[latest_patch_index] = false;
    flatBottom[latest_patch_index] = false;
  }

  if (d_corner_max != d_corner_list[NUM_LAYERS - 2]) {
    squareAcceptance[latest_patch_index] = false;
    flatBottom[latest_patch_index] = false;
  }

  DEBUG_PRINT_ALL(cout << "squareAcceptance: " << squareAcceptance << endl;
                  cout << "flatTop: " << flatTop << endl;)

  if (c_corner[latest_patch_index][1] > a_corner[latest_patch_index][1]) {
    triangleAcceptance[latest_patch_index] = true;
    c_corner[latest_patch_index][1] = b_corner[latest_patch_index][1];
    a_corner[latest_patch_index][1] = b_corner[latest_patch_index][1];
  }

  if (b_corner[latest_patch_index][1] < d_corner[latest_patch_index][1]) {
    triangleAcceptance[latest_patch_index] = true;
    b_corner[latest_patch_index][1] = c_corner[latest_patch_index][1];
    d_corner[latest_patch_index][1] = c_corner[latest_patch_index][1];
  }

  // print x_corner[latest_patch_index][1]
  DEBUG_PRINT_ALL(cout << "triangleAcceptance: " << triangleAcceptance << endl;
                  cout << "a_corner[latest_patch_index][1]: "
                       << a_corner[latest_patch_index][1] << endl;
                  cout << "b_corner[latest_patch_index][1]: "
                       << b_corner[latest_patch_index][1] << endl;
                  cout << "c_corner[latest_patch_index][1]: "
                       << c_corner[latest_patch_index][1] << endl;
                  cout << "d_corner[latest_patch_index][1]: "
                       << d_corner[latest_patch_index][1] << endl;)

  return;
}
// >>>>> END ACCEPTANCE CORNER CALCULATION <<<<<

float_value_t _cal_projection_to_row(z_value_t z_top, z_value_t apexZ0,
                                     float_value_t y, float_value_t r_max) {
  float_value_t projectionToRow = 0;
  projectionToRow =
      (z_top - apexZ0) * (y - get_radii(0)) / (r_max - get_radii(0)) + apexZ0;

  return projectionToRow;
}

void _find_starting_index_and_value(index_t num_points[NUM_LAYERS],
                                    point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                                    float_value_t projectionToRow,
                                    int_value_t &start_index,
                                    float_value_t &start_value, int i) {
loop_find_starting_index_and_value:
  for (int j = 0; j < num_points[i]; j++) {
    z_value_t row_list_j = point_get_z(points[i][j]);
    if (abs(row_list_j.to_float() - projectionToRow.to_float()) <
        abs(start_value.to_float())) {
      start_index = j;
      start_value = row_list_j - projectionToRow;
    }
  }
}

void _find_left_and_right_boundaries(index_t num_points[NUM_LAYERS],
                                     point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                                     int_value_t &left_bound,
                                     float_value_t &lbVal,
                                     int_value_t &right_bound,
                                     float_value_t &rbVal, int i) {
loop_find_left_and_right_boundaries:
  for (int j = 0; j < num_points[i]; j++) {
    z_value_t row_list_j = point_get_z(points[i][j]);
    float_value_t diff_0 =
        std::abs(row_list_j.to_float() + get_trapezoid_edges(i) +
                 BOUNDARYPOINT_OFFSET) -
        lbVal.to_float();
    float_value_t diff_1 =
        std::abs(row_list_j.to_float() - get_trapezoid_edges(i) -
                 BOUNDARYPOINT_OFFSET) -
        rbVal.to_float();

    if (diff_0 < 0) {
      left_bound = j;
      lbVal = std::abs(row_list_j.to_float() + get_trapezoid_edges(i) +
                       BOUNDARYPOINT_OFFSET);
    }

    if (diff_1 < 0) {
      right_bound = j;
      rbVal = std::abs(row_list_j.to_float() - get_trapezoid_edges(i) -
                       BOUNDARYPOINT_OFFSET);
    }
  }
}

void _find_boundaries_and_starting_index_and_value(
    index_t num_points[NUM_LAYERS], point_t points[NUM_LAYERS][MAX_NUM_POINTS],
    int_value_t &left_bound, float_value_t &lbVal, int_value_t &right_bound,
    float_value_t &rbVal, float_value_t projectionToRow,
    int_value_t &start_index, float_value_t &start_value, int i) {
#pragma HLS DATAFLOW
  // finding left and right boundaries
  _find_left_and_right_boundaries(num_points, points, left_bound, lbVal,
                                  right_bound, rbVal, i);

  // finding starting index and value
  _find_starting_index_and_value(num_points, points, projectionToRow,
                                 start_index, start_value, i);

  DEBUG_PRINT_ALL(std::cout << "left_bound: " << left_bound << std::endl;
                  std::cout << "right_bound: " << right_bound << std::endl;
                  std::cout << "lbVal: " << lbVal << std::endl;
                  std::cout << "rbVal: " << rbVal << std::endl;
                  std::cout << "start_index: " << start_index << std::endl;
                  std::cout << "start_value: " << start_value << std::endl;)

  return;
}

void alignedtoline_per_layer_loop(
    z_value_t &apexZ0, z_value_t z_top, bool leftRight,
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    point_t init_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT], PATCH_BUFFER_ARGS,
    int i) {
  float_value_t y = get_radii(i);
  float_value_t r_max = get_radii(NUM_LAYERS - 1);
  float_value_t projectionToRow =
      _cal_projection_to_row(z_top, apexZ0, y, r_max);

  // variables for finding starting index and value
  int_value_t start_index = 0;
  float_value_t start_value = 1ULL << 10;

  // variables of finding left and right boundary
  int_value_t left_bound = 0;
  float_value_t lbVal = 1ULL << 10;
  int_value_t right_bound = 0;
  float_value_t rbVal = 1ULL << 10;

  _find_boundaries_and_starting_index_and_value(
      num_points, points, left_bound, lbVal, right_bound, rbVal,
      projectionToRow, start_index, start_value, i);

  DEBUG_PRINT_ALL(if (num_patches == 1) {
    for (int j = 0; j < num_points[i]; j++) {
      cout << "row_list[" << j << "]: " << point_get_z(points[i][j]) << endl;
    }

    cout << "z_top: " << z_top << " apexZ0: " << apexZ0 << " y: " << y
         << " radii[0]: " << get_radii(0) << " r_max: " << r_max
         << " radii[0]: " << get_radii(0) << " apexZ0: " << apexZ0
         << " projectionToRow: " << projectionToRow << endl;
  })

  DEBUG_PRINT_ALL(if (num_patches == 1) {
    cout << "num_points[" << i << "]: " << num_points[i] << endl;
    cout << "start_index: " << start_index << " start_value: " << start_value
         << endl;
    cout << "left_bound: " << left_bound << endl;
    cout << "right_bound: " << right_bound << endl;
    cout << "lbVal: " << lbVal << endl;
    cout << "rbVal: " << rbVal << endl;
  })

  if (leftRight) {
    DEBUG_PRINT_ALL(cout << "start_index_before: " << start_index << endl;)

    if (start_index != 0) {
      if (start_value > ALIGNMENT_ACCURACY) {
        start_index -= 1;
      }
    }

    DEBUG_PRINT_ALL(cout << "start_index_after: " << start_index << endl;)

    if ((start_index + PPL) > (right_bound + 1)) {
      // copy points[i][right_bound + 1 - ppl] to points[i][right_bound + 1] to
      // init_patch
    loop_copy_points_to_init_patch0:
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        init_patch[i][j] = points[i][right_bound + 1 - PPL + j];
      }
    } else {
      // copy points[i][start_index] to points[i][start_index + ppl] to
      // init_patch
    loop_copy_points_to_init_patch1:
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        init_patch[i][j] = points[i][start_index + j];
      }

      // print this superpoint
      DEBUG_PRINT_ALL(for (int j = 0; j < PPL; j++) {
        cout << "init_patch[" << i << "][" << j
             << "]: " << point_get_z(init_patch[i][j]) << endl;
      })
    }
  } else {
    if (start_index != num_points[i] - 1) {
      DEBUG_PRINT_ALL(cout << "row " << i + 1 << " start_index " << start_index
                           << " start_value " << start_value << " z: "
                           << point_get_z(points[i][start_index]) << endl;)

      if (start_value < -1 * ALIGNMENT_ACCURACY) {
        // not triggered for the first patch, so not tested yet
        z_value_t start_index_z = point_get_z(points[i][start_index]);
        start_index += 1;
        start_value = start_index_z - projectionToRow;

        DEBUG_PRINT_ALL(cout << "row " << i + 1 << " start_index "
                             << start_index << " start_value " << start_value
                             << " z: " << start_index_z << endl;)
      }
    }

    DEBUG_PRINT_ALL(cout << "start_index: " << start_index << endl;
                    cout << "left_bound: " << left_bound << endl;
                    cout << "ppl: " << PPL << endl;)

    if ((start_index - PPL + 1) < left_bound) {
      // not implemented yet, not for the first patch.
    } else {
      // copy points[i][start_index - ppl + 1] to points[i][start_index + 1] to
      // init_patch
    loop_copy_points_to_init_patch2:
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        init_patch[i][j] = points[i][start_index - PPL + 1 + j];
      }
    }
  }

  return;
}

// values z_value_t, int, float etc...
// reference to values, int &
// arrays, only specified size. point_t point[xxx][xxx], no point_t **point
// no struct pointers! ->

void makePatch_alignedToLine(z_value_t &apexZ0, z_value_t z_top, bool leftRight,
                             point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                             index_t num_points[NUM_LAYERS],
                             PATCH_BUFFER_ARGS) {
  // variable declarations
  point_t init_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT];
  int_value_t original_ppl = PPL;
  float_value_t alignmentAccuracy = 0.00001;

alignedtoline_layer_loop:
  for (int i = 0; i < NUM_LAYERS; i++) {
#pragma HLS UNROLL

#if ARRAY_PARTITION == true
#pragma HLS ARRAY_PARTITION variable = init_patch complete dim = 0
#pragma HLS ARRAY_PARTITION variable = points complete dim = 0
#pragma HLS ARRAY_PARTITION variable = num_points complete dim = 0
#endif

    alignedtoline_per_layer_loop(apexZ0, z_top, leftRight, points, num_points,
                                 init_patch, PATCH_BUFFER_PARS, i);
  }

  // print init_patch
  DEBUG_PRINT_ALL(for (int i = 0; i < NUM_LAYERS; i++) {
    for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
      cout << "init_patch[" << i << "][" << j
           << "]: " << point_get_z(init_patch[i][j]) << endl;
    }
  })

  // TODO: add patch to buffer
  // patch_buffer_add_patch(init_patch, patch_buffer, patch_buffer_is_empty,
  //                        latest_patch_index, num_patches);

  // add patch to stream
  write_patch_stream(patch_stream, init_patch);

  // print latest patch
  DEBUG_PRINT_ALL(
      cout << "Print patch num: " << num_patches << endl;
      for (int i = 0; i < NUM_LAYERS; i++) {
        for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
          cout << "z[" << i << "][" << j
               << "]: " << point_get_z(patch_buffer[latest_patch_index][i][j])
               << endl;
        }
      })

  return;
}

void _shadowquilt_column_loop_get_cond(float_value_t &c_corner_tmp,
                                       float_value_t &projectionOfCornerToBeam,
                                       bool &cond) {
  // bool cond_and_0 =
  //     (float)c_corner_tmp > -1 * get_trapezoid_edges(NUM_LAYERS - 1);
  bool cond_and_0 =
      c_corner_tmp >
      (float_value_t)(-1) * (float_value_t)get_trapezoid_edges(NUM_LAYERS - 1);
  bool cond_and_1 = projectionOfCornerToBeam < BEAM_AXIS_LIM;
  cond = cond_and_0 && cond_and_1;
}

int get_index_from_z(int layer, float_value_t z_value,
                     point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                     index_t num_points[NUM_LAYERS], PATCH_BUFFER_ARGS) {
  float_value_t minVal = FLOAT_VALUE_T_MAX;
  int index = 0;

  DEBUG_PRINT_ALL(
      // print layer_data
      for (int i = 0; i < num_points[layer]; i++) {
        cout << "layer_data[" << i << "]: " << point_get_z(points[layer][i])
             << endl;
      })

loop_find_minimum_z_values_from_layer_with_index:
  for (int i = 0; i < num_points[layer]; i++) {
    // if (std::abs((float)point_get_z(points[layer][i]) - (float)z_value) <
    //     std::abs((float)minVal)) {
    if (ABS_UNIVERSAL(point_get_z(points[layer][i]) - z_value, float_value_t) <
        ABS_UNIVERSAL((minVal), float_value_t)) {
      // minVal = (float_value_t)std::abs((float)point_get_z(points[layer][i]) -
      //                                  (float)z_value);
      minVal =
          ABS_UNIVERSAL(point_get_z(points[layer][i]) - z_value, float_value_t);
      index = i;

      DEBUG_PRINT_ALL(cout << "updated: minVal: " << minVal
                           << " index: " << index << endl;)
    }
  }

  DEBUG_PRINT_ALL(cout << "index: " << index << endl;
                  cout << "z_value: " << z_value << endl;
                  cout << "minVal: " << minVal << endl;)

  return index;
}

void getShadows(float_value_t zTopMin, float_value_t zTopMax,
                point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
                float_value_t &shadow_fromTopToInnermost_topL_jL,
                float_value_t &shadow_fromTopToInnermost_topL_jR,
                float_value_t &shadow_fromTopToInnermost_topR_jL,
                float_value_t &shadow_fromTopToInnermost_topR_jR) {

  float_value_t zTop_min = FLOAT_VALUE_T_MAX;
  float_value_t zTop_max = FLOAT_VALUE_T_MIN;

  float_value_t topL_jL[NUM_LAYERS - 1] = {FLOAT_VALUE_T_MAX};
  float_value_t topL_jR[NUM_LAYERS - 1] = {FLOAT_VALUE_T_MIN};
  float_value_t topR_jL[NUM_LAYERS - 1] = {FLOAT_VALUE_T_MAX};
  float_value_t topR_jR[NUM_LAYERS - 1] = {FLOAT_VALUE_T_MIN};

  float_value_t topL_jL_max = FLOAT_VALUE_T_MIN;
  float_value_t topL_jR_min = FLOAT_VALUE_T_MAX;
  float_value_t topR_jL_max = FLOAT_VALUE_T_MIN;
  float_value_t topR_jR_min = FLOAT_VALUE_T_MAX;

  zTop_min = GET_MAX_VAL_UNIVERSAL(
      (float_value_t)zTopMin,
      (float_value_t)(-get_trapezoid_edges(NUM_LAYERS - 1)));
  zTop_max =
      GET_MIN_VAL_UNIVERSAL((float_value_t)zTopMax,
                            (float_value_t)get_trapezoid_edges(NUM_LAYERS - 1));

/**
 * Optimization suggestion:
 * Since only 4 elements are involved in getting min and max,
 * firstly get 2 pairs compared in parallel, then get the min and max.
 */
loop_calculate_shadows:
  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    int j = i + 1;
    float_value_t z_j_min = get_superpoint_min_z(patch[i]);
    float_value_t z_j_max = get_superpoint_max_z(patch[i]);

    topL_jL[i] = straightLineProjectorFromLayerIJtoK(zTop_min, z_j_min,
                                                     NUM_LAYERS, j, 1);
    topL_jR[i] = straightLineProjectorFromLayerIJtoK(zTop_min, z_j_max,
                                                     NUM_LAYERS, j, 1);
    topR_jL[i] = straightLineProjectorFromLayerIJtoK(zTop_max, z_j_min,
                                                     NUM_LAYERS, j, 1);
    topR_jR[i] = straightLineProjectorFromLayerIJtoK(zTop_max, z_j_max,
                                                     NUM_LAYERS, j, 1);

    // calculate min and max values
    if (topL_jL[i] > topL_jL_max) {
      topL_jL_max = topL_jL[i];
    }
    if (topL_jR[i] < topL_jR_min) {
      topL_jR_min = topL_jR[i];
    }
    if (topR_jL[i] > topR_jL_max) {
      topR_jL_max = topR_jL[i];
    }
    if (topR_jR[i] < topR_jR_min) {
      topR_jR_min = topR_jR[i];
    }
  }

  shadow_fromTopToInnermost_topL_jL = topL_jL_max;
  shadow_fromTopToInnermost_topL_jR = topL_jR_min;
  shadow_fromTopToInnermost_topR_jL = topR_jL_max;
  shadow_fromTopToInnermost_topR_jR = topR_jR_min;

  return;
}

void _shadowquilt_main_loop_make_verticle_strip(
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    z_value_t &apexZ0, z_value_t &saved_apexZ0, PATCH_BUFFER_ARGS) {
  // variable declarations
  z_value_t z_top_min = -1 * TOP_LAYER_LIM;
  float_value_t complementary_apexZ0 = 0x0;
  float_value_t c_corner_tmp = 1ULL << 11 - 1;
  int_value_t first_row_count = 0;
  float_value_t z_top_max = TOP_LAYER_LIM + BOUNDARYPOINT_OFFSET;
  int_value_t nPatchesInColumn = 0;
  float_value_t projectionOfCornerToBeam = 0;
  bool cond_shadowquilt_column_loop = false;

  DEBUG_PRINT_ALL(cout << "apexZ0: " << apexZ0 << endl;
                  cout << "z_top_min: " << z_top_min << endl;
                  cout << "complementary_apexZ0: " << complementary_apexZ0
                       << endl;
                  cout << "first_row_count: " << first_row_count << endl;
                  cout << "c_corner: " << c_corner << endl;
                  cout << "z_top_max: " << z_top_max << endl;
                  cout << "top_layer_lim: " << top_layer_lim << endl;)

  if (num_patches > 0) {
    // not implemented
  }

  _shadowquilt_column_loop_get_cond(c_corner_tmp, projectionOfCornerToBeam,
                                    cond_shadowquilt_column_loop);

_shadowquilt_column_loop:
  while (cond_shadowquilt_column_loop) {
#pragma HLS PIPELINE II = 1

    nPatchesInColumn++;

    makePatch_alignedToLine(apexZ0, z_top_max, false, points, num_points,
                            PATCH_BUFFER_PARS);

    getParallelograms(patch_buffer[latest_patch_index],
                      pSlope[latest_patch_index],
                      shadow_bottomL_jR[latest_patch_index],
                      shadow_bottomR_jR[latest_patch_index],
                      shadow_bottomL_jL[latest_patch_index],
                      shadow_bottomR_jL[latest_patch_index],
                      z1_min[latest_patch_index], z1_max[latest_patch_index]);

    get_acceptanceCorners(PATCH_BUFFER_PARS);

    // >>>>> PRINT FIRST PATCH MADE <<<<<
    DEBUG_PRINT_ALL(
        cout << "latest_patch_index: " << latest_patch_index << endl;
        cout << "num_patches: " << num_patches << endl;
        // print first patch
        for (int i = 0; i < NUM_LAYERS; i++) {
          for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
            cout << "patch_buffer[1][" << i << "][" << j
                 << "]: " << point_get_z(patch_buffer[latest_patch_index][i][j])
                 << endl;
          }
        })

    DEBUG_PRINT_ALL(
        cout << "top layer from "
             << point_get_z(patch_buffer[latest_patch_index][NUM_LAYERS - 1]
                                        [NUM_POINTS_IN_SUPERPOINT - 1])
             << " to "
             << point_get_z(patch_buffer[latest_patch_index][NUM_LAYERS - 1][0])
             << " z_top_max: " << z_top_max << endl;
        cout << "original: [" << a_corner[latest_patch_index][0] << ", "
             << a_corner[latest_patch_index][1] << "] for patch " << num_patches
             << endl;
        cout << "original: [" << b_corner[latest_patch_index][0] << ", "
             << b_corner[latest_patch_index][1] << "]" << endl;
        cout << "original: [" << c_corner[latest_patch_index][0] << ", "
             << c_corner[latest_patch_index][1] << "]" << endl;
        cout << "original: [" << d_corner[latest_patch_index][0] << ", "
             << d_corner[latest_patch_index][1] << "]" << endl;)
    // >>>>> END PRINT FIRST PATCH MADE <<<<<

    // >>>>> REPETITION DETECTION <<<<<
    float_value_t original_c = c_corner[latest_patch_index][1];
    float_value_t original_d = d_corner[latest_patch_index][1];

    DEBUG_PRINT_ALL(cout << "original_c: " << original_c << endl;
                    cout << "original_d: " << original_d << endl;)

    c_corner_tmp = original_c;

    bool repeat_patch = false;
    bool repeat_original = false;

    DEBUG_PRINT_ALL(cout << "original c_corner: " << c_corner_tmp << endl;
                    cout << "original d_corner: " << original_d << endl;
                    cout << "patch size: " << num_patches << endl;)

    if (num_patches > 2) {
      // not implemented
    }

    float_value_t seed_apexZ0 = apexZ0;

    projectionOfCornerToBeam = straightLineProjectorFromLayerIJtoK(
        c_corner[latest_patch_index][1], c_corner[latest_patch_index][0],
        NUM_LAYERS, 1, 0);

    bool squarePatch_alternate1 =
        (a_corner[latest_patch_index][1] > z_top_max) &&
        (b_corner[latest_patch_index][1] > z_top_max) &&
        (flatBottom[latest_patch_index]);

    bool squarePatch_alternate2 =
        (a_corner[latest_patch_index][1] > z_top_max) &&
        (flatBottom[latest_patch_index]);

    bool notChoppedPatch = (squareAcceptance[latest_patch_index]) ||
                           (squarePatch_alternate1) || (squarePatch_alternate2);

    bool madeComplementaryPatch = false;

    int_value_t nPatchesAtOriginal = num_patches;

    DEBUG_PRINT_ALL(
        cout << "last_patch_c_corner[0]: " << c_corner[latest_patch_index][0]
             << endl;
        cout << "last_patch_c_corner[1]: " << c_corner[latest_patch_index][1]
             << endl;
        cout << "last_patch_a_corner[0]: " << a_corner[latest_patch_index][0]
             << endl;
        cout << "last_patch_a_corner[1]: " << a_corner[latest_patch_index][1]
             << endl;
        cout << "last_patch_b_corner[0]: " << b_corner[latest_patch_index][0]
             << endl;
        cout << "last_patch_b_corner[1]: " << b_corner[latest_patch_index][1]
             << endl;
        cout << "projectionOfCornerToBeam: " << projectionOfCornerToBeam
             << endl;
        cout << "z_top_max: " << z_top_max << endl;
        cout << "last_patch_flatBottom: " << flatBottom[latest_patch_index]
             << endl;)

    DEBUG_PRINT_ALL(
        cout << "squareAcceptance: " << squareAcceptance[latest_patch_index]
             << " triangleAcceptance: "
             << triangleAcceptance[latest_patch_index]
             << " projectionOfCornerToBeam: " << projectionOfCornerToBeam
             << " notChoppedPatch: " << notChoppedPatch << endl;)

    // >>>>> END REPETITION DETECTION <<<<<
    // bool if_cond_0 = !(notChoppedPatch) &&
    //                  ((float)c_corner[latest_patch_index][1] >
    //                   (-1 * get_trapezoid_edges(NUM_LAYERS - 1))) &&
    //                  (projectionOfCornerToBeam < BEAM_AXIS_LIM);
    bool if_cond_0 = !(notChoppedPatch) &&
                     (c_corner[latest_patch_index][1] >
                      ((float_value_t)-1 *
                       (float_value_t)get_trapezoid_edges(NUM_LAYERS - 1))) &&
                     (projectionOfCornerToBeam < BEAM_AXIS_LIM);

    DEBUG_PRINT_ALL(cout << "if_cond_0: " << if_cond_0 << endl;)

    if (if_cond_0) {
      complementary_apexZ0 =
          get_superpoint_min_z(patch_buffer[latest_patch_index][0]);

      DEBUG_PRINT_ALL(cout << "complementary_apexZ0: " << complementary_apexZ0
                           << endl;)

      bool if_cond_0_0 =
          (triangleAcceptance[latest_patch_index]) && (!repeat_original);

      if (if_cond_0_0) {
        z_top_min = d_corner[latest_patch_index][1];

        DEBUG_PRINT_ALL(cout << "new z_top_min: " << z_top_min << endl;)
      } else {
        DEBUG_PRINT_ALL(
            cout << "z_top_min_before: " << z_top_min
                 << " superpoints[self.env.num_layers-1].min: "
                 << get_superpoint_min_z(
                        patch_buffer[latest_patch_index][NUM_LAYERS - 1])
                 << endl;)

        // z_top_min =
        //     std::max((float)-1 * TOP_LAYER_LIM,
        //              (float)get_superpoint_min_z(
        //                  patch_buffer[latest_patch_index][NUM_LAYERS - 1]));
        z_top_min = GET_MAX_VAL_UNIVERSAL(
            (float_value_t)((float_value_t)-1 * (float_value_t)TOP_LAYER_LIM),
            (float_value_t)get_superpoint_min_z(
                patch_buffer[latest_patch_index][NUM_LAYERS - 1]));

        DEBUG_PRINT_ALL(cout << "z_top_min_after: " << z_top_min << endl;)
      }

      // print ingredients
      DEBUG_PRINT_ALL(cout << "complementary_apexZ0: " << complementary_apexZ0
                           << endl;
                      cout << "z_top_min: " << z_top_min << endl;)

      makePatch_alignedToLine(complementary_apexZ0, z_top_min, true, points,
                              num_points, PATCH_BUFFER_PARS);

      getParallelograms(patch_buffer[latest_patch_index],
                        pSlope[latest_patch_index],
                        shadow_bottomL_jR[latest_patch_index],
                        shadow_bottomR_jR[latest_patch_index],
                        shadow_bottomL_jL[latest_patch_index],
                        shadow_bottomR_jL[latest_patch_index],
                        z1_min[latest_patch_index], z1_max[latest_patch_index]);

      get_acceptanceCorners(PATCH_BUFFER_PARS);

      DEBUG_PRINT_ALL(
          cout << "superpoints of patch_depth_1" << endl;
          for (int i = 0; i < NUM_LAYERS; i++) {
            cout << "superpoint " << i << " min: "
                 << get_superpoint_min_z(patch_buffer[latest_patch_index][i])
                 << " max: "
                 << get_superpoint_max_z(patch_buffer[latest_patch_index][i])
                 << endl;
          })

      DEBUG_PRINT_ALL(cout << "superpoints of patch_depth_2" << endl;
                      for (int i = 0; i < NUM_LAYERS; i++) {
                        cout << "superpoint " << i << " min: "
                             << get_superpoint_min_z(
                                    patch_buffer[latest_patch_index - 1][i])
                             << " max: "
                             << get_superpoint_max_z(
                                    patch_buffer[latest_patch_index - 1][i])
                             << endl;
                      })

      DEBUG_PRINT_ALL(cout << "complementary_apexZ0: " << complementary_apexZ0
                           << endl;
                      cout << "z_top_min: " << z_top_min << endl;)

      // print patch_buffer[latest_patch_index - 1]
      DEBUG_PRINT_ALL(
          cout << "Print patch num: " << num_patches << endl;
          for (int i = 0; i < NUM_LAYERS; i++) {
            for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
              cout << "patch_buffer[1][" << i << "][" << j << "]: "
                   << point_get_z(patch_buffer[latest_patch_index - 1][i][j])
                   << endl;
            }
          })

      DEBUG_PRINT_ALL(if (num_patches == 2) {
        // print min, max z of superpoints of last - 1 patch
        cout << "Print patch num: " << num_patches - 1 << endl;
        for (int i = 0; i < NUM_LAYERS; i++) {
          cout << "superpoint " << i << " min: "
               << get_superpoint_min_z(patch_buffer[latest_patch_index - 1][i])
               << " max: "
               << get_superpoint_max_z(patch_buffer[latest_patch_index - 1][i])
               << endl;
        }

        // print min, max z of superpoints of last patch
        cout << "Print patch num: " << num_patches << endl;
        for (int i = 0; i < NUM_LAYERS; i++) {
          cout << "superpoint " << i << " min: "
               << get_superpoint_min_z(patch_buffer[latest_patch_index][i])
               << " max: "
               << get_superpoint_max_z(patch_buffer[latest_patch_index][i])
               << endl;
        }
      })

      madeComplementaryPatch = true;

      DEBUG_PRINT_ALL(
          cout << "complementary: [" << a_corner[latest_patch_index][0] << ", "
               << a_corner[latest_patch_index][1]
               << "] for z_top_min: " << z_top_min << endl;
          cout << "complementary: [" << b_corner[latest_patch_index][0] << ", "
               << b_corner[latest_patch_index][1] << "] for patch "
               << num_patches << endl;
          cout << "complementary: [" << c_corner[latest_patch_index][0] << ", "
               << c_corner[latest_patch_index][1] << "]" << endl;
          cout << "complementary: [" << d_corner[latest_patch_index][0] << ", "
               << d_corner[latest_patch_index][1] << "]" << endl;)

      float_value_t complementary_a = a_corner[latest_patch_index][1];
      float_value_t complementary_b = b_corner[latest_patch_index][1];

      // float_value_t white_space_height =
      //     std::max(original_c - complementary_a, original_d -
      //     complementary_b);
      float_value_t white_space_height = GET_MAX_VAL_UNIVERSAL(
          original_c - complementary_a, original_d - complementary_b);

      float_value_t previous_white_space_height = -1;
      int_value_t counter = 0;
      int_value_t counterUpshift = 0;
      int_value_t current_z_top_index = -1;
      float_value_t previous_z_top_min = FLOAT_VALUE_T_MIN;

    loop_adjust_complementary_patch:
      while (!(white_space_height <= 0 && (previous_white_space_height >= 0) &&
               (std::abs((double)white_space_height) > 0.000001) &&
               ((c_corner[latest_patch_index][1] >
                 (float_value_t)(-1 * get_trapezoid_edges(NUM_LAYERS - 1))) ||
                (white_space_height > 0)) &&
               (current_z_top_index < (num_points[NUM_LAYERS - 1] - 1)) &&
               !repeat_patch && !repeat_original)) {
        DEBUG_PRINT_ALL(cout << endl; if (num_patches > 2) {
          // this part not tested yet
          cout << 'roginal c: ' << original_c << " "
               << c_corner[PREVIOUS_PATCH_INDEX][1]
               << " || original d: " << original_d << " "
               << d_corner[PREVIOUS_PATCH_INDEX][1] << endl;
        })

        DEBUG_PRINT_ALL(cout << "complementary_a: " << complementary_a << " "
                             << a_corner[LATEST_PATCH_INDEX][1]
                             << " || complementary_b: " << complementary_b
                             << " " << b_corner[LATEST_PATCH_INDEX][1] << endl;)

        current_z_top_index = get_index_from_z(
            NUM_LAYERS - 1, z_top_min, points, num_points, PATCH_BUFFER_PARS);

        DEBUG_PRINT_ALL(cout << "current white_space_height: "
                             << white_space_height << endl;
                        cout << "counter: " << counter
                             << " counterUpshift: " << counterUpshift << endl;
                        cout << "orig_ztop: " << current_z_top_index
                             << " orig_z_top_min: " << z_top_min << endl;)

        float_value_t current_z_i_index[NUM_LAYERS] = {FLOAT_VALUE_T_MAX};
        float_value_t new_z_i_index[NUM_LAYERS] = {FLOAT_VALUE_T_MAX};

      loop_copy_z_values_to_current_z_array:
        for (int i = 0; i < NUM_LAYERS; i++) {
          float_value_t z_value_tmp = straightLineProjectorFromLayerIJtoK(
              complementary_apexZ0, z_top_min, 1, NUM_LAYERS, i + 1);

          current_z_i_index[i] = get_index_from_z(
              i, z_value_tmp, points, num_points, PATCH_BUFFER_PARS);
        }

        DEBUG_PRINT_ALL(
            // DEBUG: print current_z_i_index
            for (int i = 0; i < NUM_LAYERS; i++) {
              cout << "current_z_i_index[" << i << "]: " << current_z_i_index[i]
                   << endl;
            })

        if (z_top_min == previous_z_top_min) {
          current_z_top_index++;
          for (int i = 0; i < NUM_LAYERS; i++) {
            new_z_i_index[i] = current_z_i_index[i] + 1;
          }
        }

        previous_z_top_min = z_top_min;

        if (white_space_height < 0) {
          counter++;
          current_z_top_index--;

          /**
           * BUG: this is probably wrong, not sure about the actual size of
           * new_z_i_index
           */
          for (int i = 0; i < NUM_LAYERS; i++) {
            new_z_i_index[i] = current_z_i_index[i] - 1;
          }
        } else {
          counterUpshift++;
          current_z_top_index++;

          for (int i = 0; i < NUM_LAYERS; i++) {
            new_z_i_index[i] = current_z_i_index[i] + 1;
          }
        }

        DEBUG_PRINT_ALL( // DEBUG: print new_z_i_index
            for (int i = 0; i < NUM_LAYERS; i++) {
              cout << "new_z_i_index[" << i << "]: " << new_z_i_index[i]
                   << endl;
            })

        int x = num_points[NUM_LAYERS - 1] - 1;
        // current_z_top_index = std::min((int)current_z_top_index, x);
        current_z_top_index = GET_MIN_VAL_UNIVERSAL(
            (int_value_t)current_z_top_index, (int_value_t)x);

        for (int i = 0; i < NUM_LAYERS; i++) {
          // new_z_i_index[i] =
          // std::min((float)new_z_i_index[i], (float)(num_points[i] - 1));
          new_z_i_index[i] =
              GET_MIN_VAL_UNIVERSAL((float_value_t)new_z_i_index[i],
                                    (float_value_t)(num_points[i] - 1));
        }

        DEBUG_PRINT_ALL( // DEBUG: print new_z_i_index
            for (int i = 0; i < NUM_LAYERS; i++) {
              cout << "new_z_i_index[" << i << "]: " << new_z_i_index[i]
                   << endl;
            })

        for (int i = 0; i < NUM_LAYERS; i++) {
          // new_z_i_index[i] = std::max((float)new_z_i_index[i], 0.0f);
          new_z_i_index[i] = GET_MAX_VAL_UNIVERSAL(
              (float_value_t)new_z_i_index[i], (float_value_t)0);
        }

        float_value_t new_z_i[NUM_LAYERS] = {FLOAT_VALUE_T_MAX};

        for (int i = 0; i < NUM_LAYERS; i++) {
          new_z_i[i] = point_get_z(points[i][(int)new_z_i_index[i]]);
        }

        DEBUG_PRINT_ALL( // DEBUG: print new_z_i
            for (int i = 0; i < NUM_LAYERS; i++) {
              cout << "new_z_i[" << i << "]: " << new_z_i[i] << endl;
            })

        float_value_t new_z_i_atTop[NUM_LAYERS] = {FLOAT_VALUE_T_MAX};

        for (int i = 1; i < NUM_LAYERS; i++) {
          new_z_i_atTop[i - 1] = straightLineProjectorFromLayerIJtoK(
              complementary_apexZ0, new_z_i[i], 1, i + 1, NUM_LAYERS);
        }

        DEBUG_PRINT_ALL(
            // DEBUG: print new_z_i_atTop
            for (int i = 0; i < NUM_LAYERS - 1; i++) {
              cout << "new_z_i_atTop[" << i << "]: " << new_z_i_atTop[i]
                   << endl;
            })

        int layerWithSmallestShift = 0;
        float_value_t layerSMin = FLOAT_VALUE_T_MAX;

        for (int i = 0; i < NUM_LAYERS - 1; i++) {
          // if ((float_value_t)std::abs((float)new_z_i_atTop[i] -
          //                             (float)previous_z_top_min) < layerSMin)
          //                             {
          if ((float_value_t)ABS_UNIVERSAL(
                  new_z_i_atTop[i] - previous_z_top_min, float_value_t) <
              layerSMin) {
            // layerSMin =
            //     std::abs((float)new_z_i_atTop[i] -
            //     (float)previous_z_top_min);
            layerSMin = ABS_UNIVERSAL(new_z_i_atTop[i] - previous_z_top_min,
                                      float_value_t);
            layerWithSmallestShift = i;
          }
        }

        layerWithSmallestShift++;

        DEBUG_PRINT_ALL( // DEBUG: print layerSMin and layerWithSmallestShift
            cout << "layerSMin: " << layerSMin << " layerWithSmallestShift: "
                 << layerWithSmallestShift << endl;)

        DEBUG_PRINT_ALL(for (int i = 0; i < NUM_LAYERS - 1; i++) {
          cout << i + 1 << " new_z_i_atTop: " << new_z_i_atTop[i]
               << " shift_i_ztop: " << new_z_i_atTop[i] - previous_z_top_min
               << " layerWithSmallestShift: " << layerWithSmallestShift << endl;
        })

        z_top_min = new_z_i_atTop[layerWithSmallestShift - 1];

        // if (std::abs((float)(z_top_min - previous_z_top_min)) <
        //     ALIGNMENT_ACCURACY * 0.1) {
        if (ABS_UNIVERSAL(z_top_min - previous_z_top_min, float_value_t) <
            (float_value_t)ALIGNMENT_ACCURACY * (float_value_t)0.1) {
          z_top_min = point_get_z(points[NUM_LAYERS - 1][current_z_top_index]);
        }

        // if (std::abs((float)(z_top_min - previous_z_top_min)) <
        //     ALIGNMENT_ACCURACY * 0.1) {
        if (ABS_UNIVERSAL(z_top_min - previous_z_top_min, float_value_t) <
            (float_value_t)ALIGNMENT_ACCURACY * (float_value_t)0.1) {
          z_top_min = point_get_z(points[NUM_LAYERS - 2][current_z_top_index]);
        }

        // if (std::abs((float)(z_top_min - previous_z_top_min)) <
        //     ALIGNMENT_ACCURACY * 0.1) {
        if (ABS_UNIVERSAL(z_top_min - previous_z_top_min, float_value_t) <
            (float_value_t)ALIGNMENT_ACCURACY * (float_value_t)0.1) {
          z_top_min = point_get_z(points[NUM_LAYERS - 3][current_z_top_index]);
        }

        if (((z_top_min - previous_z_top_min) * (white_space_height)) < 0) {
          z_top_min = new_z_i_atTop[NUM_LAYERS - 2];
        }

        DEBUG_PRINT_ALL( // DEBUG: print z_top_min
            cout << "z_top_min: " << z_top_min << endl;)

        DEBUG_PRINT_ALL(
            /**
             * BUG: new_def_z_top_min prints 1.90735e-06 instead of 0
             */
            cout << " new_def_z_top_min_diff: "
                 << z_top_min -
                        point_get_z(points[NUM_LAYERS - 1][current_z_top_index])
                 << endl;

            cout << " new_ztop_index: " << current_z_top_index
                 << " new_z_i_index: " << new_z_i_index[0] << " "
                 << new_z_i_index[1] << " " << new_z_i_index[2] << " "
                 << new_z_i_index[3] << " " << new_z_i_index[4]
                 << " new_z_top_min: " << z_top_min
                 << " shift_ztop: " << z_top_min - previous_z_top_min << endl;)

        int nPatchesAtComplementary = num_patches;

        if (nPatchesAtComplementary > nPatchesAtOriginal) {
          DEBUG_PRINT_ALL(cout << "deleted complementary: "
                               << a_corner[LATEST_PATCH_INDEX][0] << " "
                               << a_corner[LATEST_PATCH_INDEX][1]
                               << " for patch" << num_patches << endl;

                          cout << "deleted complementary: "
                               << b_corner[LATEST_PATCH_INDEX][0] << " "
                               << b_corner[LATEST_PATCH_INDEX][1] << endl;

                          cout << "deleted complementary: "
                               << c_corner[LATEST_PATCH_INDEX][0] << " "
                               << c_corner[LATEST_PATCH_INDEX][1] << endl;

                          cout << "deleted complementary: "
                               << d_corner[LATEST_PATCH_INDEX][0] << " "
                               << d_corner[LATEST_PATCH_INDEX][1] << endl;)


          // TODO: delete patch
          // patch_buffer_delete_patch(patch_buffer, patch_buffer_is_empty,
          //                           latest_patch_index, num_patches, 0);
        }

        DEBUG_PRINT_ALL( // print ingredients
            cout << "complementary_apexZ0: " << complementary_apexZ0 << endl;
            cout << "z_top_min: " << z_top_min << endl;)

        makePatch_alignedToLine(complementary_apexZ0, z_top_min, true, points,
                                num_points, PATCH_BUFFER_PARS);

        getParallelograms(
            patch_buffer[latest_patch_index], pSlope[latest_patch_index],
            shadow_bottomL_jR[latest_patch_index],
            shadow_bottomR_jR[latest_patch_index],
            shadow_bottomL_jL[latest_patch_index],
            shadow_bottomR_jL[latest_patch_index], z1_min[latest_patch_index],
            z1_max[latest_patch_index]);

        get_acceptanceCorners(PATCH_BUFFER_PARS);

        DEBUG_PRINT_ALL( // print corners of the latest patch
            cout << "a_corner: " << a_corner[latest_patch_index][0] << " "
                 << a_corner[latest_patch_index][1] << endl;
            cout << "b_corner: " << b_corner[latest_patch_index][0] << " "
                 << b_corner[latest_patch_index][1] << endl;
            cout << "c_corner: " << c_corner[latest_patch_index][0] << " "
                 << c_corner[latest_patch_index][1] << endl;
            cout << "d_corner: " << d_corner[latest_patch_index][0] << " "
                 << d_corner[latest_patch_index][1] << endl;)

        DEBUG_PRINT_ALL( // print latest patch made
            cout << "Print patch num: " << num_patches << endl;
            for (int i = 0; i < NUM_LAYERS; i++) {
              for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
                cout << "patch_buffer[latest][" << i << "][" << j << "]: "
                     << point_get_z(patch_buffer[latest_patch_index][i][j])
                     << endl;
              }
            })

        complementary_a = a_corner[latest_patch_index][1];
        complementary_b = b_corner[latest_patch_index][1];

        previous_white_space_height = white_space_height;

        // white_space_height = std::max(original_c - complementary_a,
        //                               original_d - complementary_b);
        white_space_height = GET_MAX_VAL_UNIVERSAL(
            original_c - complementary_a, original_d - complementary_b);

        DEBUG_PRINT_ALL(
            cout << "complementary_a:" << complementary_a << " "
                 << a_corner[latest_patch_index][1] << " || complementary_b:"
                 << complementary_b << " " << b_corner[latest_patch_index][1]
                 << " new z_top_min: " << z_top_min << endl;
            cout << "new white_space_height: " << white_space_height << endl;
            cout << "adjusted complementary: "
                 << a_corner[latest_patch_index][0] << " "
                 << a_corner[latest_patch_index][1]
                 << " for z_top_min:" << z_top_min << endl;
            cout << "adjusted complementary: "
                 << b_corner[latest_patch_index][0] << " "
                 << b_corner[latest_patch_index][1] << "for patch "
                 << num_patches << endl;
            cout << "adjusted complementary: "
                 << c_corner[latest_patch_index][0] << " "
                 << c_corner[latest_patch_index][1] << endl;
            cout << "adjusted complementary: "
                 << d_corner[latest_patch_index][0] << " "
                 << d_corner[latest_patch_index][1] << endl;)

        // PATCH_EXIT(2)
        /**
         * BUG: Fix 42 not implemented
         */
      }

      c_corner_tmp = c_corner[latest_patch_index][1];

      projectionOfCornerToBeam = straightLineProjectorFromLayerIJtoK(
          c_corner_tmp, c_corner[latest_patch_index][0], NUM_LAYERS, 1, 0);

      saved_apexZ0 = c_corner[latest_patch_index][0];

      // IF_MADE_COMPLEMENTARY_PATCH
      if (madeComplementaryPatch) {
        // get shadow for latest patch
        getShadows(z_top_min, z_top_max, patch_buffer[latest_patch_index],
                   shadow_fromTopToInnermost_topL_jL[latest_patch_index],
                   shadow_fromTopToInnermost_topL_jR[latest_patch_index],
                   shadow_fromTopToInnermost_topR_jL[latest_patch_index],
                   shadow_fromTopToInnermost_topR_jR[latest_patch_index]);
        // get shadow for 2nd latest patch
        getShadows(z_top_min, z_top_max, patch_buffer[PREVIOUS_PATCH_INDEX],
                   shadow_fromTopToInnermost_topL_jL[PREVIOUS_PATCH_INDEX],
                   shadow_fromTopToInnermost_topL_jR[PREVIOUS_PATCH_INDEX],
                   shadow_fromTopToInnermost_topR_jL[PREVIOUS_PATCH_INDEX],
                   shadow_fromTopToInnermost_topR_jR[PREVIOUS_PATCH_INDEX]);

        // DEBUG: print shadows
        DEBUG_PRINT_ALL(
            cout << "latest patch shadow:" << endl;
            cout << "shadow_fromTopToInnermost_topL_jL: "
                 << shadow_fromTopToInnermost_topL_jL[latest_patch_index]
                 << endl;
            cout << "shadow_fromTopToInnermost_topL_jR: "
                 << shadow_fromTopToInnermost_topL_jR[latest_patch_index]
                 << endl;
            cout << "shadow_fromTopToInnermost_topR_jL: "
                 << shadow_fromTopToInnermost_topR_jL[latest_patch_index]
                 << endl;
            cout << "shadow_fromTopToInnermost_topR_jR: "
                 << shadow_fromTopToInnermost_topR_jR[latest_patch_index]
                 << endl;
            cout << "previous patch shadow:" << endl;
            cout << "shadow_fromTopToInnermost_topL_jL: "
                 << shadow_fromTopToInnermost_topL_jL[PREVIOUS_PATCH_INDEX]
                 << endl;
            cout << "shadow_fromTopToInnermost_topL_jR: "
                 << shadow_fromTopToInnermost_topL_jR[PREVIOUS_PATCH_INDEX]
                 << endl;
            cout << "shadow_fromTopToInnermost_topR_jL: "
                 << shadow_fromTopToInnermost_topR_jL[PREVIOUS_PATCH_INDEX]
                 << endl;
            cout << "shadow_fromTopToInnermost_topR_jR: "
                 << shadow_fromTopToInnermost_topR_jR[PREVIOUS_PATCH_INDEX]
                 << endl;)

        float_value_t original_topR_jL =
            shadow_fromTopToInnermost_topR_jL[PREVIOUS_PATCH_INDEX];

        // bool originalPartialTop =
        //     (original_topR_jL > complementary_apexZ0) &&
        //     (original_topR_jL < apexZ0) &&
        //     (ABS_UNIVERSAL(straightLineProjectorFromLayerIJtoK(
        //                        original_topR_jL, z_top_max, 1, NUM_LAYERS,
        //                        0),
        //                    float_value_t) < 20 * BEAM_AXIS_LIM);

        /**
         * BUG:
         * if the two values a, b are equal, a < b yields false,
         * however, the reference version yields true (because in the reference
         * version, a and b are slightly different, which is not the case in my
         * version.)
         * Potential fix: temporarily change < to <= to compensate for the
         * difference
         * Temp fix: change < to <= and change > to >=
         */

        bool originalPartialTop =
            (original_topR_jL >= complementary_apexZ0) &&
            (original_topR_jL <= apexZ0) &&
            (ABS_UNIVERSAL(straightLineProjectorFromLayerIJtoK(
                               original_topR_jL, z_top_max, 1, NUM_LAYERS, 0),
                           float_value_t) < 20 * BEAM_AXIS_LIM);

        float_value_t original_topL_jL =
            shadow_fromTopToInnermost_topL_jL[PREVIOUS_PATCH_INDEX];
        bool originalPartialBottom =
            (original_topL_jL > complementary_apexZ0) &&
            (original_topL_jL < apexZ0) &&
            (ABS_UNIVERSAL(straightLineProjectorFromLayerIJtoK(
                               original_topL_jL, z_top_min, 1, NUM_LAYERS, 0),
                           float_value_t) < 20 * BEAM_AXIS_LIM);
        float_value_t complementary_topR_jR =
            shadow_fromTopToInnermost_topR_jR[LATEST_PATCH_INDEX];
        bool complementaryPartialTop =
            (complementary_topR_jR > complementary_apexZ0) &&
            (complementary_topR_jR < apexZ0) &&
            (ABS_UNIVERSAL(
                 straightLineProjectorFromLayerIJtoK(
                     complementary_topR_jR, z_top_max, 1, NUM_LAYERS, 0),
                 float_value_t) < 20 * BEAM_AXIS_LIM);
        float_value_t complementary_topL_jR =
            shadow_fromTopToInnermost_topL_jR[LATEST_PATCH_INDEX];
        bool complementaryPartialBottom =
            (complementary_topL_jR > complementary_apexZ0) &&
            (complementary_topL_jR < apexZ0) &&
            (ABS_UNIVERSAL(
                 straightLineProjectorFromLayerIJtoK(
                     complementary_topL_jR, z_top_min, 1, NUM_LAYERS, 0),
                 float_value_t) < 20 * BEAM_AXIS_LIM);

        float_value_t horizontalShiftTop =
            original_topR_jL - complementary_topR_jR;
        float_value_t horizontalShiftBottom =
            original_topL_jL - complementary_topL_jR;

        float_value_t complementary_topR_jL =
            shadow_fromTopToInnermost_topR_jL[LATEST_PATCH_INDEX];
        float_value_t complementary_topL_jL =
            shadow_fromTopToInnermost_topL_jL[LATEST_PATCH_INDEX];
        float_value_t original_topR_jR =
            shadow_fromTopToInnermost_topR_jR[PREVIOUS_PATCH_INDEX];
        float_value_t original_topL_jR =
            shadow_fromTopToInnermost_topL_jR[PREVIOUS_PATCH_INDEX];

        float_value_t horizontalOverlapTop =
            GET_MAX_VAL_UNIVERSAL(complementary_topR_jL - original_topR_jL,
                                  complementary_topR_jR - original_topR_jR);
        float_value_t horizontalOverlapBottom =
            GET_MAX_VAL_UNIVERSAL(complementary_topL_jL - original_topL_jL,
                                  complementary_topL_jR - original_topL_jR);

        horizontalOverlapTop = -1;
        horizontalOverlapBottom = -1;

        float_value_t newGapTop = -0.000001;
        float_value_t newGapBottom = -0.000001;

        bool makeHorizontallyShiftedPatch = false;
        float_value_t shifted_Align = apexZ0;
        bool doShiftedPatch = true;

        float_value_t newZtop = 0;

        DEBUG_PRINT_ALL(
            cout << "original_topR_jL: " << original_topR_jL << endl;
            cout << "originalPartialTop: " << originalPartialTop << endl;
            cout << "original_topL_jL: " << original_topL_jL << endl;
            cout << "originalPartialBottom: " << originalPartialBottom << endl;
            cout << "complementary_topR_jR: " << complementary_topR_jR << endl;
            cout << "complementaryPartialTop: " << complementaryPartialTop
                 << endl;
            cout << "complementary_topL_jR: " << complementary_topL_jR << endl;
            cout << "complementaryPartialBottom: " << complementaryPartialBottom
                 << endl;
            cout << "horizontalShiftTop: " << horizontalShiftTop << endl;
            cout << "horizontalShiftBottom: " << horizontalShiftBottom << endl;
            cout << "complementary_topR_jL: " << complementary_topR_jL << endl;
            cout << "complementary_topL_jL: " << complementary_topL_jL << endl;
            cout << "original_topR_jR: " << original_topR_jR << endl;
            cout << "original_topL_jR: " << original_topL_jR << endl;
            cout << "horizontalOverlapTop: " << horizontalOverlapTop << endl;
            cout << "horizontalOverlapBottom: " << horizontalOverlapBottom
                 << endl;)

        float_value_t z0_original_bCorner = straightLineProjectorFromLayerIJtoK(
            apexZ0, z_top_max, 1, NUM_LAYERS, 0);
        float_value_t z0_complementary_cCorner =
            straightLineProjectorFromLayerIJtoK(complementary_apexZ0, z_top_min,
                                                1, NUM_LAYERS, 0);
        bool shiftOriginal = true;

        DEBUG_PRINT_ALL(
            cout << "z0_original_bCorner: " << z0_original_bCorner << endl;
            cout << "z0_complementary_cCorner: " << z0_complementary_cCorner
                 << endl;)

        if (z0_original_bCorner < 0) {
          shiftOriginal = false;
          shifted_Align = complementary_apexZ0;
        }

        if (z0_complementary_cCorner > 0) {
          shiftOriginal = true;
          shifted_Align = apexZ0;
        }

        DEBUG_PRINT_ALL(if (horizontalShiftTop > 0 or
                            horizontalShiftBottom > 0) {
          cout << "originalPartialTop: " << originalPartialTop
               << " complementaryPartialTop: " << complementaryPartialTop
               << " originalPartialBottom: " << originalPartialBottom
               << " complementaryPartialBottom: " << complementaryPartialBottom
               << " " << original_topR_jL << " " << original_topL_jL << " "
               << complementary_topR_jR << " " << complementary_topL_jR
               << " horizontalOverlapTop: " << horizontalOverlapTop
               << " horizontalOverlapBottom: " << horizontalOverlapBottom
               << endl;
        })

        DEBUG_PRINT_ALL(cout << "shiftedOriginal: " << shiftOriginal << endl;
                        cout << "shiftedAlign: " << shifted_Align << endl;)
        // LOOP: begin_loop_for_horizontal_shifts
        while (((horizontalShiftTop > 0 && originalPartialTop &&
                 complementaryPartialTop) ||
                (horizontalShiftBottom > 0 && originalPartialBottom &&
                 complementaryPartialBottom)) &&
               doShiftedPatch && (horizontalOverlapTop <= 0) &&
               (horizontalOverlapBottom <= 0) &&
               (newGapTop < 0 || newGapBottom < 0)) {
          /**
           * LEFTOVER:
           * test for this loop not conducted yet.
           */
          DEBUG_PRINT_ALL(cout << "horizontalShifts: " << horizontalShiftTop
                               << " " << horizontalShiftBottom
                               << " shifted_Align: " << shifted_Align << endl;)

          newZtop = z_top_max;

          if (shiftOriginal) {
            shifted_Align -= GET_MAX_VAL_UNIVERSAL(horizontalShiftTop,
                                                   horizontalShiftBottom);
          } else {
            shifted_Align += GET_MAX_VAL_UNIVERSAL(horizontalShiftTop,
                                                   horizontalShiftBottom);
            newZtop = z_top_min;
          }

          if (makeHorizontallyShiftedPatch) {
            /**
             * TODO:
             * delete the latest patch
             */
          }

          makePatch_alignedToLine(shifted_Align, newZtop, (not shiftOriginal),
                                  points, num_points, PATCH_BUFFER_PARS);

          getParallelograms(
              patch_buffer[latest_patch_index], pSlope[latest_patch_index],
              shadow_bottomL_jR[latest_patch_index],
              shadow_bottomR_jR[latest_patch_index],
              shadow_bottomL_jL[latest_patch_index],
              shadow_bottomR_jL[latest_patch_index], z1_min[latest_patch_index],
              z1_max[latest_patch_index]);

          get_acceptanceCorners(PATCH_BUFFER_PARS);

          // get shadow for latest patch
          getShadows(z_top_min, z_top_max, patch_buffer[latest_patch_index],
                     shadow_fromTopToInnermost_topL_jL[latest_patch_index],
                     shadow_fromTopToInnermost_topL_jR[latest_patch_index],
                     shadow_fromTopToInnermost_topR_jL[latest_patch_index],
                     shadow_fromTopToInnermost_topR_jR[latest_patch_index]);

          if (shiftOriginal) {
            original_topR_jL =
                shadow_fromTopToInnermost_topL_jL[LATEST_PATCH_INDEX];
            original_topL_jL =
                shadow_fromTopToInnermost_topL_jL[LATEST_PATCH_INDEX];
            original_topR_jR =
                shadow_fromTopToInnermost_topR_jR[LATEST_PATCH_INDEX];
            original_topL_jR =
                shadow_fromTopToInnermost_topL_jR[LATEST_PATCH_INDEX];
          } else {
            complementary_topR_jR =
                shadow_fromTopToInnermost_topR_jR[LATEST_PATCH_INDEX];
            complementary_topL_jR =
                shadow_fromTopToInnermost_topL_jR[LATEST_PATCH_INDEX];
            complementary_topR_jL =
                shadow_fromTopToInnermost_topR_jL[LATEST_PATCH_INDEX];
            complementary_topL_jL =
                shadow_fromTopToInnermost_topL_jL[LATEST_PATCH_INDEX];
          }

          horizontalShiftTop = original_topR_jL - complementary_topR_jR;
          horizontalShiftBottom = original_topL_jL - complementary_topL_jR;

          if (shiftOriginal && straightLineProjectorFromLayerIJtoK(
                                   original_topR_jR, z_top_max, 1, NUM_LAYERS,
                                   0) < BEAM_AXIS_LIM) {
            horizontalOverlapTop =
                GET_MAX_VAL_UNIVERSAL(complementary_topR_jL - original_topR_jL,
                                      complementary_topR_jR - original_topR_jR);
            horizontalOverlapBottom =
                GET_MAX_VAL_UNIVERSAL(complementary_topL_jL - original_topL_jL,
                                      complementary_topL_jR - original_topL_jR);

            DEBUG_PRINT_ALL(cout << " horizontalOverlapTop:"
                                 << " " << horizontalOverlapTop
                                 << " horizontalOverlapBottom: "
                                 << horizontalOverlapBottom << endl;)
          }

          DEBUG_PRINT_ALL(cout << "original_topR_jL: " << original_topR_jL
                               << " complementary_topR_jR "
                               << complementary_topR_jR << " original_topL_jL "
                               << original_topL_jL << " complementary_topL_jR "
                               << complementary_topL_jR << " shiftOriginal "
                               << shiftOriginal << endl;)

          makeHorizontallyShiftedPatch = true;

          DEBUG_PRINT_ALL(cout << "updated_horizontalShifts: "
                               << horizontalShiftTop << " "
                               << horizontalShiftBottom
                               << " shifted_Align: " << shifted_Align << endl;)
        }

        // END_LOOP: end_loop_for_horizontal_shifts

        if (makeHorizontallyShiftedPatch) {
          if (((straightLineProjectorFromLayerIJtoK(shifted_Align, newZtop, 1,
                                                    NUM_LAYERS,
                                                    0) > BEAM_AXIS_LIM)) and
              shiftOriginal) {
            if (num_patches > 2) {
              /**
               * TODO:
               * delete previous prevous patch
               */
            }
          }
        }
      }
      // exit(0);
      // END_IF_MADE_COMPLEMENTARY_PATCH

      z_top_max = c_corner_tmp;

      cout << "+++++++++++++++++++++++ c_corner: " << c_corner_tmp << endl;
    }

    apexZ0 = c_corner[LATEST_PATCH_INDEX][0];
    apexZ0 = saved_apexZ0;
    cout << "'=======================================================  "
            "z1_Align: "
         << apexZ0 << endl;

    /**
     * TODO: translation resume here
     */
    exit(0);

    // get condition for next iteration
    _shadowquilt_column_loop_get_cond(c_corner_tmp, projectionOfCornerToBeam,
                                      cond_shadowquilt_column_loop);

    return;
  }
}

void makePatches_ShadowQuilt_fromEdges(
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    PATCH_BUFFER_ARGS) {
  // variable declarations
  bool fix42 = true;
  z_value_t apexZ0 = get_trapezoid_edges(0);
  float_value_t saved_apexZ0;
  float_value_t original_apexZ0 = apexZ0;

  int_value_t first_row_count = 0;

makepatch_main_loop:
  // while ((float)apexZ0 > -1 * get_trapezoid_edges(0)) {
  while (apexZ0 > (float_value_t)-1 * (float_value_t)get_trapezoid_edges(0)) {
#pragma HLS PIPELINE II = 1
    _shadowquilt_main_loop_make_verticle_strip(points, num_points, apexZ0,
                                               saved_apexZ0, PATCH_BUFFER_PARS);

    return;
  }
}

void system_top(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                index_t num_points[NUM_LAYERS],
                hls::stream<point_t> &patch_stream) {
  // variable declarations

  // patch buffer: circular buffer, three patches
  // patch: 5 superpoints
  // superpoints: 16 consecutive points
  point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                      [NUM_POINTS_IN_SUPERPOINT] = {0x0};
  bool patch_buffer_valid[PATCH_BUFFER_SIZE] = {false};
  index_t patch_buffer_order[PATCH_BUFFER_SIZE] = {-1};
  
  index_t latest_patch_index = 0x0;
  index_t num_patches = 0x0;

  // parallelogram arrays
  float_value_t pSlope[PATCH_BUFFER_SIZE][NUM_LAYERS] = {FLOAT_VALUE_T_MAX};
  float_value_t shadow_bottomL_jR[PATCH_BUFFER_SIZE][NUM_LAYERS] = {
      FLOAT_VALUE_T_MAX};
  float_value_t shadow_bottomR_jR[PATCH_BUFFER_SIZE][NUM_LAYERS] = {
      FLOAT_VALUE_T_MAX};
  float_value_t shadow_bottomL_jL[PATCH_BUFFER_SIZE][NUM_LAYERS] = {
      FLOAT_VALUE_T_MAX};
  float_value_t shadow_bottomR_jL[PATCH_BUFFER_SIZE][NUM_LAYERS] = {
      FLOAT_VALUE_T_MAX};
  float_value_t z1_min[PATCH_BUFFER_SIZE][NUM_LAYERS] = {FLOAT_VALUE_T_MAX};
  float_value_t z1_max[PATCH_BUFFER_SIZE][NUM_LAYERS] = {FLOAT_VALUE_T_MAX};

  // acceptance corners arrays
  float_value_t a_corner[PATCH_BUFFER_SIZE][2] = {FLOAT_VALUE_T_MAX};
  float_value_t b_corner[PATCH_BUFFER_SIZE][2] = {FLOAT_VALUE_T_MAX};
  float_value_t c_corner[PATCH_BUFFER_SIZE][2] = {FLOAT_VALUE_T_MAX};
  float_value_t d_corner[PATCH_BUFFER_SIZE][2] = {FLOAT_VALUE_T_MAX};

  // shadows array
  float_value_t shadow_fromTopToInnermost_topL_jL[PATCH_BUFFER_SIZE] = {
      FLOAT_VALUE_T_MAX};
  float_value_t shadow_fromTopToInnermost_topL_jR[PATCH_BUFFER_SIZE] = {
      FLOAT_VALUE_T_MAX};
  float_value_t shadow_fromTopToInnermost_topR_jL[PATCH_BUFFER_SIZE] = {
      FLOAT_VALUE_T_MAX};
  float_value_t shadow_fromTopToInnermost_topR_jR[PATCH_BUFFER_SIZE] = {
      FLOAT_VALUE_T_MAX};

  // patch bools
  bool squareAcceptance[PATCH_BUFFER_SIZE] = {true};
  bool flatTop[PATCH_BUFFER_SIZE] = {true};
  bool flatBottom[PATCH_BUFFER_SIZE] = {true};
  bool triangleAcceptance[PATCH_BUFFER_SIZE] = {false};

#if ARRAY_PARTITION == true
// partition array: points
#pragma HLS ARRAY_PARTITION variable = points complete dim = 0
#pragma HLS ARRAY_PARTITION variable = points complete dim = 1
// partition array: num_points
#pragma HLS ARRAY_PARTITION variable = num_points complete dim = 0
#endif

  makePatches_ShadowQuilt_fromEdges(points, num_points, PATCH_BUFFER_PARS);

  return;
}
