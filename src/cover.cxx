#include "cover.h"
#include "constants.h"
#include "debug.h"
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
  // Initialize start_index and start_value with something meaningful
  *start_index = -1;      // Indicate an invalid index initially
  *start_value = INT_MAX; // Use maximum double value for initial comparison

loop_find_start_index_and_value:
  for (int i = 0; i < MAX_POINTS_PER_LAYER; i++) {
    if (i <
        num_points) { // Check if the current index is within the valid range
      double current_distance = abs(row_list[i] - projectionToRow);
      if (current_distance < abs(*start_value)) {
        *start_index = i;
        *start_value = row_list[i] - projectionToRow;
      }
    }
  }
}

// TODO: fix the function. The final values are close but not exact.
void _find_left_and_right_bound(int *left_bound, int *right_bound,
                                double *lbVal, double *rbVal,
                                double row_list[MAX_POINTS_PER_LAYER],
                                int num_points, int layer_index) {
  // Initialize boundaries and values
  *left_bound = -1;
  *right_bound = -1;
  *lbVal = INT_MAX;
  *rbVal = INT_MAX;

  // Adjust the loop to run for a fixed number of iterations
loop_find_left_and_right_bound:
  for (int j = 0; j < MAX_POINTS_PER_LAYER; j++) {
    if (j < num_points) { // Only operate within the valid range
      double currentLbVal = abs(
          (row_list[j] + trapezoid_edges[layer_index] + BOUNDARY_POINT_OFFSET));
      if (currentLbVal < *lbVal) {
        *left_bound = j;
        *lbVal = currentLbVal;
      }

      double currentRbVal = abs(
          (row_list[j] - trapezoid_edges[layer_index] - BOUNDARY_POINT_OFFSET));
      if (currentRbVal < *rbVal) {
        *right_bound = j;
        *rbVal = currentRbVal;
      }
    }
  }
}

void cover_make_patch_aligned_to_line(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS], double apexZ0, double z_top) {
  // #pragma HLS DATAFLOW
  superpoint_s init_patch[NUM_LAYERS];

  for (int i = 0; i < NUM_LAYERS; i++) {
#pragma HLS UNROLL
    double y = radii[i];

    double row_list[MAX_POINTS_PER_LAYER];
    size_t row_list_size = 0;

    double r_max = radii[NUM_LAYERS - 1];
    double projectionToRow =
        (z_top - apexZ0) * (y - radii[0]) / (r_max - radii[0]) + apexZ0;

    int start_index = 0;
    double start_value = 1000000;

    _copy_row_list(row_list, row_data[i]);

    _find_start_index_and_value(&start_index, &start_value, row_list,
                                num_points[i], projectionToRow);

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
        start_index += 1;
        start_value = row_list[start_index] - projectionToRow;
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
  // patch_s patch;
  //   // copy superpoints to patch
  //   for (int i = 0; i < NUM_LAYERS; i++) {
  // #pragma HLS UNROLL
  //     patch.superpoints[i] = init_patch[i];
  //   }

  patch_s patch = patch_init(init_patch, NUM_LAYERS, apexZ0);

  patch_buffer_push_patch(&cover->patch_buffer, patch);
  // std::cout << "cover->n_patches: " << cover->n_patches << std::endl;
  cover->n_patches++;
  // std::cout << "cover->n_patches: " << cover->n_patches << std::endl;

  return;
}

void cover_make_patch_shadow_quilt_from_edges(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS]) {
  const_array_initializer(radii, trapezoid_edges, parallelogram_slopes,
                          radii_leverArm);

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
      float z_top_max_candidate;
      z_top_max_candidate = patch_straight_line_projector_from_layer_ij_to_k(
          -1 * BEAM_AXIS_LIM, apexZ0, 0, 1, NUM_LAYERS);
      z_top_max = std::min(z_top_max, z_top_max_candidate);
    }

    int nPatchesInColumn = 0;
    float projectionOfCornerToBeam = 0;

    while ((c_corner > -1 * trapezoid_edges[NUM_LAYERS - 1]) &&
           (projectionOfCornerToBeam < BEAM_AXIS_LIM)) {
      nPatchesInColumn++;

      bool leftRight = false;

      cover_make_patch_aligned_to_line(cover, row_data, num_points, apexZ0,
                                       z_top_max);

      // access last patch
      patch_s *last_patch = patch_buffer_access_patch_ptr(&cover->patch_buffer,
                                                          cover->n_patches - 1);

      for (int i = 0; i < NUM_LAYERS - 1; i++) {
        int j = i + 1;

        DEBUG(std::cout << j
                        << " superpoint: " << last_patch->superpoints[i].min
                        << " " << last_patch->superpoints[i].max
                        << " shadowTop from L1Max: "
                        << patch_straight_line_projector_from_layer_ij_to_k(
                               last_patch->superpoints[0].max,
                               last_patch->superpoints[i].min, 1, j, NUM_LAYERS)
                        << " "
                        << patch_straight_line_projector_from_layer_ij_to_k(
                               last_patch->superpoints[0].max,
                               last_patch->superpoints[i].max, 1, j, NUM_LAYERS)
                        << " "
                        << patch_straight_line_projector_from_layer_ij_to_k(
                               last_patch->superpoints[0].min,
                               last_patch->superpoints[i].min, 1, j, NUM_LAYERS)
                        << std::endl;)

        return;
      }
    }
  }

  return;
}