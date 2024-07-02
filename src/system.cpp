#include "system.h"
#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <hls_stream.h>

#include <cmath>
#include <iostream>

using namespace std;

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
  for (int j = 0; j < num_points[i]/2; j++) {
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

    z_value_t row_list_k = point_get_z(points[i][num_point[i] - j - 1]);
    float_value_t diff_02 =
			std::abs(row_list_k.to_float() + get_trapezoid_edges(i) +
					 BOUNDARYPOINT_OFFSET) -
			lbVal.to_float();
	float_value_t diff_12 =
		std::abs(row_list_k.to_float() - get_trapezoid_edges(i) -
				 BOUNDARYPOINT_OFFSET) -
		rbVal.to_float();
    if (diff_02 < 0) {
          left_bound = num_point[i] - j - 1;
          lbVal = std::abs(row_list_k.to_float() + get_trapezoid_edges(i) +
                           BOUNDARYPOINT_OFFSET);
        }
	if (diff_12 < 0) {
	  right_bound = num_point[i] - j - 1;
	  rbVal = std::abs(row_list_k.to_float() - get_trapezoid_edges(i) -
					   BOUNDARYPOINT_OFFSET);
	}
  }
  if(num_point[i]%2 == 1)
  {
	  int j = num_point[i]/2;
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
    z_value_t &apexZ0, z_value_t z_top_max, bool leftRight,
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    point_t init_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT], PATCH_BUFFER_ARGS,
    int i) {
  float_value_t y = get_radii(i);
  float_value_t r_max = get_radii(NUM_LAYERS - 1);
  float_value_t projectionToRow =
      _cal_projection_to_row(z_top_max, apexZ0, y, r_max);

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

  if (leftRight) {
    // not implemented
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
  }

  DEBUG_PRINT_ALL(cout << "start_index: " << start_index << endl;
                  cout << "left_bound: " << left_bound << endl;
                  cout << "ppl: " << PPL << endl;)

  if ((start_index - PPL + 1) < left_bound) {
    // not implemented yet, not for the first patch.
  } else {
    // push the patch into the patch buffer
    point_t temp_superpoint[NUM_POINTS_IN_SUPERPOINT];

  loop_copy_points_to_superpoint:
    for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
#pragma HLS UNROLL
      temp_superpoint[j] = points[i][start_index - PPL + 1 + j];

      DEBUG_PRINT_ALL(cout << "temp_superpoint[" << j
                           << "]: " << point_get_z(temp_superpoint[j]) << endl;)

    loop_copy_superpoint_to_init_patch:
      for (int k = 0; k < NUM_POINTS_IN_SUPERPOINT; k++) {
#pragma HLS UNROLL
        init_patch[i][k] = temp_superpoint[k];
      }
    }
  }

  return;
}

// values z_value_t, int, float etc...
// reference to values, int &
// arrays, only specified size. point_t point[xxx][xxx], no point_t **point
// no struct pointers! ->

void makePatch_alignedToLine(z_value_t &apexZ0, z_value_t z_top_max,
                             bool leftRight,
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

    alignedtoline_per_layer_loop(apexZ0, z_top_max, false, points, num_points,
                                 init_patch, patch_buffer, latest_patch_index,
                                 num_patches, patch_stream, i);
  }

  // print init_patch
  DEBUG_PRINT_ALL(for (int i = 0; i < NUM_LAYERS; i++) {
    for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
      cout << "init_patch[" << i << "][" << j
           << "]: " << point_get_z(init_patch[i][j]) << endl;
    }
  })

  // add patch to buffer
  patch_buffer_add_patch(init_patch, patch_buffer, latest_patch_index,
                         num_patches);

  // add patch to stream
  write_patch_stream(patch_stream, init_patch);

  return;
}

void _shadowquilt_column_loop_get_cond(float_value_t &c_corner,
                                       float_value_t &projectionOfCornerToBeam,
                                       bool &cond) {
  bool cond_and_0 = (float)c_corner > -1 * get_trapezoid_edges(NUM_LAYERS - 1);
  bool cond_and_1 = projectionOfCornerToBeam < BEAM_AXIS_LIM;
  cond = cond_and_0 && cond_and_1;
}

void _shadowquilt_main_loop_make_verticle_strip(
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    z_value_t &apexZ0, PATCH_BUFFER_ARGS) {
  // variable declarations
  z_value_t z_top_min = -1 * TOP_LAYER_LIM;
  float_value_t complementary_apexZ0 = 0x0;
  float_value_t c_corner = 1ULL << 11 - 1;
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

  _shadowquilt_column_loop_get_cond(c_corner, projectionOfCornerToBeam,
                                    cond_shadowquilt_column_loop);

_shadowquilt_column_loop:
  while (cond_shadowquilt_column_loop) {
#pragma HLS PIPELINE II = 1

    nPatchesInColumn++;

    makePatch_alignedToLine(apexZ0, z_top_max, false, points, num_points,
                            patch_buffer, latest_patch_index, num_patches,
                            patch_stream);

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
    // >>>>> END PRINT FIRST PATCH MADE <<<<<

    // complementary patch logic, not implemented yet

    // get condition for next iteration
    _shadowquilt_column_loop_get_cond(c_corner, projectionOfCornerToBeam,
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
  while ((float)apexZ0 > -1 * get_trapezoid_edges(0)) {
#pragma HLS PIPELINE II = 1
    _shadowquilt_main_loop_make_verticle_strip(points, num_points, apexZ0,
                                               patch_buffer, latest_patch_index,
                                               num_patches, patch_stream);

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
  point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT];
  index_t latest_patch_index = 0;
  index_t num_patches = 0;

#if ARRAY_PARTITION == true
// partition array: points
#pragma HLS ARRAY_PARTITION variable = points complete dim = 0
#pragma HLS ARRAY_PARTITION variable = points complete dim = 1
// partition array: num_points
#pragma HLS ARRAY_PARTITION variable = num_points complete dim = 0
#endif

  makePatches_ShadowQuilt_fromEdges(points, num_points, patch_buffer,
                                    latest_patch_index, num_patches,
                                    patch_stream);

  return;
}

#if CONFIG_IS_SYNTHESIS == false
int main() {
  cout << "Hello, world!" << endl;

  return 0;
}
#endif
