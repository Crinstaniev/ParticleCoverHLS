#include "cover.h"
#include "constants.h"
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
    int num_points[NUM_LAYERS], double apexZ0, double z_top) {
#pragma HLS DATAFLOW
  superpoint_s init_patch[NUM_LAYERS];

  std::cout << "apex_z0 in cover_make_patch_aligned_to_line: " << apexZ0
            << std::endl;

  for (int i = 0; i < NUM_LAYERS; i++) {
#pragma HLS UNROLL
    double y = radii[i];

    double row_list[MAX_POINTS_PER_LAYER];
    size_t row_list_size = 0;

    double r_max = radii[NUM_LAYERS - 1];
    double projectionToRow =
        (z_top - apexZ0) * (y - radii[0]) / (r_max - radii[0]) + apexZ0;

    // this part guaranteed!
    // // print z_top, apex_z0, y, radii[0], r_max, projectionToRow
    // std::cout << "Z_TOP: " << z_top << std::endl;
    // std::cout << "apexZ0: " << apexZ0 << std::endl;
    // std::cout << "y: " << y << std::endl;
    // std::cout << "radii[0]: " << radii[0] << std::endl;
    // std::cout << "r_max: " << r_max << std::endl;
    // std::cout << "projectionToRow: " << projectionToRow << std::endl;

    int start_index = 0;
    double start_value = 1000000;

    _copy_row_list(row_list, row_data[i]);

    _find_start_index_and_value(&start_index, &start_value, row_list,
                                num_points[i], projectionToRow);

    // this part guaranteed!
    // std::cout << "DEBUG START" << std::endl;
    // std::cout << "start_index: " << start_index << std::endl;
    // std::cout << "start_value: " << start_value << std::endl;

    int left_bound = 0;
    int right_bound = 0;
    double lbVal = INT_MAX;
    double rbVal = INT_MAX;

    _find_left_and_right_bound(&left_bound, &right_bound, &lbVal, &rbVal,
                               row_list, num_points[i], i);

    // this part guaranteed!
    // std::cout << "left_bound: " << left_bound << std::endl;
    // std::cout << "right_bound: " << right_bound << std::endl;
    // std::cout << "lbVal: " << lbVal << std::endl;
    // std::cout << "rbVal: " << rbVal << std::endl;
    // exit(0);

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

    // this part guaranteed!
    // std::cout << "start_index: " << start_index << std::endl;
    // std::cout << "left_bound: " << left_bound << std::endl;
    // std::cout << "ppl: " << PPL << std::endl;

    if ((start_index - PPL + 1) < left_bound) {
      // make superpoint, add to init_patch
      point_s points[MAX_NUM_POINTS_IN_SUPERPOINT];
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        points[j] = row_data[i][left_bound + j];
      }
      superpoint_s sp = superpoint_init(points, PPL);
      init_patch[i] = sp;

      // std::cout << "max: " << sp.max << std::endl;
      // std::cout << "min: " << sp.min << std::endl;

    } else {
      // make superpoint, add to init_patch
      point_s points[MAX_NUM_POINTS_IN_SUPERPOINT];
      for (int j = 0; j < PPL; j++) {
#pragma HLS UNROLL
        points[j] = row_data[i][start_index - PPL + 1 + j];
      }
      superpoint_s sp = superpoint_init(points, PPL);
      init_patch[i] = sp;

      // std::cout << "max: " << sp.max << std::endl;
      // std::cout << "min: " << sp.min << std::endl;

      // this part guaranteed!
      // print points in sp
      // for (int j = 0; j < PPL; j++) {
      //   // layer number
      //   std::cout << "layer_num: " << sp.points[j].layer_num;
      //   // print z values
      //   std::cout << " z: " << sp.points[j].z;
      //   // radius
      //   std::cout << " radius: " << sp.points[j].radius;
      //   // phi
      //   std::cout << " phi: " << sp.points[j].phi << std::endl;
      // }
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
  cover->n_patches++;

  return;
}

void cover_make_patch_shadow_quilt_from_edges(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS]) {
  CONST_ARRAY_INITIALIZER;

  bool fix42 = true;
  float apexZ0 = trapezoid_edges[0];
  float saved_apexZ0;

  while (apexZ0 > -1 * trapezoid_edges[0]) {
    float z_top_min = -1 * TOP_LAYER_LIM;
    float complementary_apexZ0 = 0;
    int first_row_count = 0;
    float c_corner = LONG_MAX;
    float z_top_max = TOP_LAYER_LIM + BOUNDARY_POINT_OFFSET;

    // // print these values
    // std::cout << "apexZ0: " << apexZ0 << std::endl;
    // std::cout << "z_top_min: " << z_top_min << std::endl;
    // std::cout << "complementary_apexZ0: " << complementary_apexZ0 <<
    // std::endl; std::cout << "first_row_count: " << first_row_count <<
    // std::endl; std::cout << "c_corner: " << c_corner << std::endl; std::cout
    // << "z_top_max: " << z_top_max << std::endl;

    // exit(0);

    if (cover->n_patches > 0) {
      float z_top_max_candidate;
      // TODO: fix this
      // patch_straight_line_projector_from_layer_ij_to_k(
      //     &z_top_max_candidate, -1 * BEAM_AXIS_LIM, apexZ0, 0, 1,
      //     NUM_LAYERS);
      z_top_max_candidate = patch_straight_line_projector_from_layer_ij_to_k(
          -1 * BEAM_AXIS_LIM, apexZ0, 0, 1, NUM_LAYERS);
      z_top_max = std::min(z_top_max, z_top_max_candidate);
    }

    std::cout << "z_top_max: " << z_top_max << std::endl;

    int nPatchesInColumn = 0;
    float projectionOfCornerToBeam = 0;

    while ((c_corner > -1 * trapezoid_edges[NUM_LAYERS - 1]) &&
           (projectionOfCornerToBeam < BEAM_AXIS_LIM)) {
      nPatchesInColumn++;

      std::cout << "nPatchesInColumn: " << nPatchesInColumn << std::endl;

      bool leftRight = false;
      std::cout << apexZ0 << " " << PPL << " " << z_top_max << " " << leftRight
                << std::endl;

      cover_make_patch_aligned_to_line(cover, row_data, num_points, apexZ0,
                                       z_top_max);

      // access last patch
      patch_s *last_patch = patch_buffer_access_patch_ptr(&cover->patch_buffer,
                                                          cover->n_patches - 1);

      std::cout << "top layer from "
                << last_patch->superpoints[NUM_LAYERS - 1].max << " to "
                << last_patch->superpoints[NUM_LAYERS - 1].min
                << " z_top_max: " << z_top_max << std::endl;
      std::cout << "original: [" << last_patch->a_corner[0] << ", "
                << last_patch->a_corner[1] << "] for patch " << cover->n_patches
                << std::endl;
      std::cout << "original: [" << last_patch->b_corner[0] << ", "
                << last_patch->b_corner[1] << "] for patch " << cover->n_patches
                << std::endl;
      std::cout << "original: [" << last_patch->c_corner[0] << ", "
                << last_patch->c_corner[1] << "] for patch " << cover->n_patches
                << std::endl;
      std::cout << "original: [" << last_patch->d_corner[0] << ", "
                << last_patch->d_corner[1] << "] for patch " << cover->n_patches
                << std::endl;
      exit(0);
    }
  }

  return;
}