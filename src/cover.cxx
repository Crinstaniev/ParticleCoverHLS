#include "cover.h"
#include "patch.h"
#include "system.h"

#include <climits>
#include <math.h>
#include <string>

#define ALIGNMENT_ACCURACY 0.00001
#define Z_TOP -8.883753333333333
#define APEX_Z0 7.75751
#define BOUNDARY_POINT_OFFSET 0.0001
#define PPL 16

static double radii[NUM_LAYERS] = RADII_INITIALIZER;
static double trapezoid_edges[NUM_LAYERS] = TRAPEZOID_EDGES_INITIALIZER;

/**
 * Prepare data for synthesis components.
 */
void cover_init(cover_s *cover) {
  patch_buffer_init(&cover->patch_buffer);
  cover->n_patches = 0;

  return;
}

// copy z values from row_data to row_list
void _copy_row_list(double row_list[MAX_POINTS_PER_LAYER],
                    point_s row_data[MAX_POINTS_PER_LAYER]) {
loop_copy_row_list:
  for (int i = 0; i < MAX_POINTS_PER_LAYER; i++) {
#pragma HLS UNROLL
    row_list[i] = row_data[i].z;
  }
}

void _find_start_index_and_value(int *start_index, double *start_value,
                                 double row_list[MAX_POINTS_PER_LAYER],
                                 int num_points, double projectionToRow) {
loop_find_start_index_and_value:
  for (int i = 0; i < num_points; i++) {
    if (abs(row_list[i] - projectionToRow) < abs(*start_value)) {
      *start_index = i;
      *start_value = row_list[i] - projectionToRow;
    }
  }
}

// TODO: fix the function. The final values are close but not exact.
void _find_left_and_right_bound(int *left_bound, int *right_bound,
                                double *lbVal, double *rbVal,
                                double row_list[MAX_POINTS_PER_LAYER],
                                int num_points, int layer_index) {
  // std::cout << "row_list_size: " << num_points << std::endl;
loop_find_left_and_right_bound:
  for (int j = 0; j < num_points; j++) {
    if (abs((row_list[j] + trapezoid_edges[layer_index] +
             BOUNDARY_POINT_OFFSET)) < *lbVal) {
      *left_bound = j;
      *lbVal = abs(
          (row_list[j] + trapezoid_edges[layer_index] + BOUNDARY_POINT_OFFSET));
    }

    if (abs((row_list[j] - trapezoid_edges[layer_index] -
             BOUNDARY_POINT_OFFSET)) < *rbVal) {
      *right_bound = j;
      *rbVal = abs(
          (row_list[j] - trapezoid_edges[layer_index] - BOUNDARY_POINT_OFFSET));
    }
  }
}

void cover_make_patch_aligned_to_line(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS]) {

  superpoint_s init_patch[NUM_LAYERS];

  for (int i = 0; i < NUM_LAYERS; i++) {
#pragma HLS UNROLL
    double y = radii[i];

    double row_list[MAX_POINTS_PER_LAYER];
    size_t row_list_size = 0;

    _copy_row_list(row_list, row_data[i]);

    double r_max = radii[NUM_LAYERS - 1];
    double projectionToRow =
        (Z_TOP - APEX_Z0) * (y - radii[0]) / (r_max - radii[0]) + APEX_Z0;

    int start_index = 0;
    double start_value = INT_MAX;

    _find_start_index_and_value(&start_index, &start_value, row_list,
                                num_points[i], projectionToRow);

    // std::cout << "start_index: " << start_index << std::endl;
    // std::cout << "start_value: " << start_value << std::endl;

    int left_bound = 0;
    int right_bound = 0;
    double lbVal = INT_MAX;
    double rbVal = INT_MAX;

    _find_left_and_right_bound(&left_bound, &right_bound, &lbVal, &rbVal,
                               row_list, num_points[i], i);

    if (start_index != (num_points[i] - 1)) {
      // std::cout << "row " << i + 1 << " start_index " << start_index
      //           << " start_value " << start_value
      //           << " z: " << row_list[start_index] << std::endl;
      if (start_value < -1 * ALIGNMENT_ACCURACY) {
        // start_index += 1;
        // start_value = row_list[start_index] - projectionToRow;
        // std::cout << "row " << i + 1 << " updated start_index " <<
        // start_index
        //           << " start_value " << start_value
        //           << " z: " << row_list[start_index] << std::endl;
      }
    }

    if ((start_index - PPL + 1) < left_bound) {
      // make superpoint, add to init_patch
      point_s points[MAX_NUM_POINTS_IN_SUPERPOINT];
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        points[j] = row_data[i][left_bound + j];
      }
      superpoint_s sp = superpoint_init(points, PPL);
      init_patch[i] = sp;
    } else {
      // make superpoint, add to init_patch
      point_s points[MAX_NUM_POINTS_IN_SUPERPOINT];
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        points[j] = row_data[i][start_index - PPL + 1 + j];
      }
      superpoint_s sp = superpoint_init(points, PPL);
      init_patch[i] = sp;
    }
  }

  // add patch to cover
  patch_s patch;
  // copy superpoints to patch
  for (int i = 0; i < NUM_LAYERS; i++) {
#pragma HLS UNROLL
    patch.superpoints[i] = init_patch[i];
  }

  patch_buffer_push_patch(&cover->patch_buffer, patch);

  return;
}

void cover_make_patch_shadow_quilt_from_edges(cover_s *cover) {
  bool fix42 = true;
  float apexZ0 = trapezoid_edges[0];
  float saved_apexZ0;

  while (apexZ0 > -1 * trapezoid_edges[0]) {
    float z_top_min = -1 * TOP_LAYER_LIM;
    float complementary_apexZ0 = 0;
    int first_row_count = 0;
    float c_corner = LONG_MAX;
    float z_top_max = TOP_LAYER_LIM + BOUNDARY_POINT_OFFSET;

    if (cover->n_patches > 0) {
      // z_top_max =
      // min(z_top_max,
      //     patches[patches.size() - 1].straightLineProjectorFromLayerIJtoK(
      //         -1 * env.beam_axis_lim, apexZ0, 0, 1, env.num_layers));
      
    }
  }

  return;
}