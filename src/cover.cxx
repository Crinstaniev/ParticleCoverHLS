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

LINK_CONST_ARRAYS

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
  *start_index = 0;
  *start_value = 1000000;
loop_find_start_index_and_value:
  for (int i = 0; i < MAX_POINTS_PER_LAYER; i++) {
    if (i < num_points) {

      DEBUG_PRINT_ALL(std::cout << "current row_list[" << i
                                << "]: " << row_list[i] << " projectionToRow: "
                                << projectionToRow << std::endl;)

      if (std::abs(row_list[i] - projectionToRow) < std::abs(*start_value)) {
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
    int num_points[NUM_LAYERS], double apexZ0, double z_top, bool leftRight) {
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

    // print z_top, apexZ0, y, radii[0], r_max, radii[0], apexZ0
    DEBUG_PRINT_ALL(
        std::cout << "z_top: " << z_top << " apexZ0: " << apexZ0 << " y: " << y
                  << " radii[0]: " << radii[0] << " r_max: " << r_max
                  << " radii[0]: " << radii[0] << " apexZ0: " << apexZ0
                  << " projectionToRow: " << projectionToRow << std::endl;)

    int start_index = 0;
    double start_value = 1000000;

    _copy_row_list(row_list, row_data[i]);

    DEBUG_PRINT_ALL(if (cover->n_patches == 1) {
      // print row_list: same
      DEBUG_PRINT_ALL(for (int j = 0; j < num_points[i]; j++) {
        std::cout << "row_list[" << j << "]: " << row_list[j] << std::endl;
      })

      DEBUG_PRINT_ALL(
          std::cout << "z_top: " << z_top << " apexZ0: " << apexZ0 << " y: "
                    << y << " radii[0]: " << radii[0] << " r_max: " << r_max
                    << " radii[0]: " << radii[0] << " apexZ0: " << apexZ0
                    << " projectionToRow: " << projectionToRow << std::endl;)
    })

    _find_start_index_and_value(&start_index, &start_value, row_list,
                                num_points[i], projectionToRow);

    // print row_list
    DEBUG_PRINT_ALL(for (int j = 0; j < num_points[i]; j++) {
      std::cout << "row_list[" << j << "]: " << row_list[j] << std::endl;
    })

    // print num_points[i]
    DEBUG_PRINT_ALL(std::cout << "num_points[" << i << "]: " << num_points[i]
                              << std::endl;

                    std::cout << "start_index: " << start_index
                              << " start_value: " << start_value << std::endl;)

    int left_bound = 0;
    int right_bound = 0;
    double lbVal = INT_MAX;
    double rbVal = INT_MAX;

    _find_left_and_right_bound(&left_bound, &right_bound, &lbVal, &rbVal,
                               row_list, num_points[i], i);

    DEBUG_PRINT_ALL(std::cout << "left_bound: " << left_bound << std::endl;
                    std::cout << "right_bound: " << right_bound << std::endl;
                    std::cout << "lbVal: " << lbVal << std::endl;
                    std::cout << "rbVal: " << rbVal << std::endl;)

    DEBUG_PRINT_ALL(if (cover->n_patches == 1) {
      std::cout << "num_points[" << i << "]: " << num_points[i] << std::endl;
      std::cout << "start_index: " << start_index
                << " start_value: " << start_value << std::endl;
      std::cout << "left_bound: " << left_bound << std::endl;
      std::cout << "right_bound: " << right_bound << std::endl;
      std::cout << "lbVal: " << lbVal << std::endl;
      std::cout << "rbVal: " << rbVal << std::endl;
    })

    if (leftRight == true) {
      if (start_index != 0) {
        if (start_value > ALIGNMENT_ACCURACY) {
          start_index--;
        }
      }

      if ((start_index + PPL) > (right_bound + 1)) {
        init_patch[i] =
            superpoint_init(row_data[i] + right_bound - PPL + 1, PPL);

        // print superpoint
        DEBUG_PRINT_ALL(std::cout << "superpoint " << i
                                  << " min: " << init_patch[i].min << " max: "
                                  << init_patch[i].max << std::endl;)

      } else {
        init_patch[i] = superpoint_init(row_data[i] + start_index, PPL);

        // print superpoint
        DEBUG_PRINT_ALL(std::cout << "superpoint " << i
                                  << " min: " << init_patch[i].min << " max: "
                                  << init_patch[i].max << std::endl;)
      }
    } else {
      if (start_index != num_points[i] - 1) {
        DEBUG_PRINT_ALL(std::cout
                            << "row " << i + 1 << " start_index " << start_index
                            << " start_value " << start_value
                            << " z: " << row_list[start_index] << std::endl;)

        if (start_value < -1 * ALIGNMENT_ACCURACY) {
          start_index++;
          start_value = row_list[start_index] - projectionToRow;
          DEBUG_PRINT_ALL(std::cout
                              << "row " << i + 1 << " updated start_index "
                              << start_index << " start_value " << start_value
                              << " z: " << row_list[start_index] << std::endl;)
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
  }

  patch_s patch = patch_init(init_patch, NUM_LAYERS, apexZ0);

  // print superpoints
  DEBUG_PRINT_ALL(for (int i = 0; i < NUM_LAYERS; i++) {
    std::cout << "superpoint " << i << " min: " << patch.superpoints[i].min
              << " max: " << patch.superpoints[i].max << std::endl;
  })

  patch_buffer_push_patch(&cover->patch_buffer, patch);

  cover->n_patches++;

  return;
}

void backup_cover_make_patch_aligned_to_line(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS], double apexZ0, double z_top, bool leftRight) {
  superpoint_s init_patch[NUM_LAYERS];

  for (int i = 0; i < NUM_LAYERS; i++) {
#pragma HLS UNROLL
    double y = radii[i];

    double row_list[MAX_POINTS_PER_LAYER];
    size_t row_list_size = 0;

    double r_max = radii[NUM_LAYERS - 1];
    double projectionToRow =
        (z_top - apexZ0) * (y - radii[0]) / (r_max - radii[0]) + apexZ0;

    // print z_top, apexZ0, y, radii[0], r_max, radii[0], apexZ0
    DEBUG_PRINT_ALL(
        std::cout << "z_top: " << z_top << " apexZ0: " << apexZ0 << " y: " << y
                  << " radii[0]: " << radii[0] << " r_max: " << r_max
                  << " radii[0]: " << radii[0] << " apexZ0: " << apexZ0
                  << " projectionToRow: " << projectionToRow << std::endl;)

    int start_index = 0;
    double start_value = 1000000;

    _copy_row_list(row_list, row_data[i]);

    DEBUG_PRINT_ALL(if (cover->n_patches == 1) {
      // print row_list: same
      DEBUG_PRINT_ALL(for (int j = 0; j < num_points[i]; j++) {
        std::cout << "row_list[" << j << "]: " << row_list[j] << std::endl;
      })

      DEBUG_PRINT_ALL(
          std::cout << "z_top: " << z_top << " apexZ0: " << apexZ0 << " y: "
                    << y << " radii[0]: " << radii[0] << " r_max: " << r_max
                    << " radii[0]: " << radii[0] << " apexZ0: " << apexZ0
                    << " projectionToRow: " << projectionToRow << std::endl;)
    })

    // this function is not synthesizable, TODO: fix this
    _find_start_index_and_value(&start_index, &start_value, row_list,
                                num_points[i], projectionToRow);

    // // print row_list
    // DEBUG_PRINT_ALL(for (int j = 0; j < num_points[i]; j++) {
    //   std::cout << "row_list[" << j << "]: " << row_list[j] << std::endl;
    // })

    // // print num_points[i]
    // DEBUG_PRINT_ALL(std::cout << "num_points[" << i << "]: " << num_points[i]
    //                           << std::endl;

    //                 std::cout << "start_index: " << start_index
    //                           << " start_value: " << start_value <<
    //                           std::endl;)

    // int left_bound = 0;
    // int right_bound = 0;
    // double lbVal = INT_MAX;
    // double rbVal = INT_MAX;

    // _find_left_and_right_bound(&left_bound, &right_bound, &lbVal, &rbVal,
    //                            row_list, num_points[i], i);

    // DEBUG_PRINT_ALL(std::cout << "left_bound: " << left_bound << std::endl;
    //                 std::cout << "right_bound: " << right_bound << std::endl;
    //                 std::cout << "lbVal: " << lbVal << std::endl;
    //                 std::cout << "rbVal: " << rbVal << std::endl;)

    // DEBUG_PRINT_ALL(if (cover->n_patches == 1) {
    //   std::cout << "num_points[" << i << "]: " << num_points[i] << std::endl;
    //   std::cout << "start_index: " << start_index
    //             << " start_value: " << start_value << std::endl;
    //   std::cout << "left_bound: " << left_bound << std::endl;
    //   std::cout << "right_bound: " << right_bound << std::endl;
    //   std::cout << "lbVal: " << lbVal << std::endl;
    //   std::cout << "rbVal: " << rbVal << std::endl;
    // })

    // if (leftRight == true) {
    //   // if (start_index != 0) {
    //   //   if (start_value > ALIGNMENT_ACCURACY) {
    //   //     start_index--;
    //   //   }
    //   // }

    //   if ((start_index + PPL) > (right_bound + 1)) {
    //     // init_patch[i] =
    //     //     superpoint_init(row_data[i] + right_bound - PPL + 1, PPL);

    //     // // print superpoint
    //     // DEBUG_PRINT_ALL(std::cout << "superpoint " << i
    //     //                           << " min: " << init_patch[i].min << "
    //     max: "
    //     //                           << init_patch[i].max << std::endl;)

    //   } else {
    //     // init_patch[i] = superpoint_init(row_data[i] + start_index, PPL);

    //     // // print superpoint
    //     // DEBUG_PRINT_ALL(std::cout << "superpoint " << i
    //     //                           << " min: " << init_patch[i].min << "
    //     max: "
    //     //                           << init_patch[i].max << std::endl;)
    //   }
    // } else {
    //   // if (start_index != num_points[i] - 1) {
    //   //   DEBUG_PRINT_ALL(std::cout
    //   //                       << "row " << i + 1 << " start_index " <<
    //   start_index
    //   //                       << " start_value " << start_value
    //   //                       << " z: " << row_list[start_index] <<
    //   std::endl;)

    //   //   if (start_value < -1 * ALIGNMENT_ACCURACY) {
    //   //     start_index++;
    //   //     start_value = row_list[start_index] - projectionToRow;
    //   //     DEBUG_PRINT_ALL(std::cout
    //   //                         << "row " << i + 1 << " updated start_index
    //   "
    //   //                         << start_index << " start_value " <<
    //   start_value
    //   //                         << " z: " << row_list[start_index] <<
    //   std::endl;)
    //   //   }
    //   // }

    //   //       if ((start_index - PPL + 1) < left_bound) {
    //   //         // make superpoint, add to init_patch
    //   //         point_s points[MAX_NUM_POINTS_IN_SUPERPOINT];
    //   //         for (int j = 0; j < PPL; j++) {
    //   // #pragma HLS UNROLL
    //   //           points[j] = row_data[i][left_bound + j];
    //   //         }
    //   //         superpoint_s sp = superpoint_init(points, PPL);
    //   //         init_patch[i] = sp;
    //   //       } else {
    //   //         // make superpoint, add to init_patch
    //   //         point_s points[MAX_NUM_POINTS_IN_SUPERPOINT];
    //   //         for (int j = 0; j < PPL; j++) {
    //   // #pragma HLS UNROLL
    //   //           points[j] = row_data[i][start_index - PPL + 1 + j];
    //   //         }
    //   //         superpoint_s sp = superpoint_init(points, PPL);
    //   //         init_patch[i] = sp;
    //   //       }
    // }
  }

  // patch_s patch = patch_init(init_patch, NUM_LAYERS, apexZ0);

  // // print superpoints
  // DEBUG_PRINT_ALL(for (int i = 0; i < NUM_LAYERS; i++) {
  //   std::cout << "superpoint " << i << " min: " << patch.superpoints[i].min
  //             << " max: " << patch.superpoints[i].max << std::endl;
  // })

  // patch_buffer_push_patch(&cover->patch_buffer, patch);

  cover->n_patches++;

  return;
}

void cover_make_patch_shadow_quilt_from_edges(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS]) {
#pragma HLS INLINE off

  DEBUG_PRINT_ALL(print_const_arrays(radii, trapezoid_edges,
                                     parallelogram_slopes, radii_leverArm);)

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

      DEBUG_PRINT_ALL(std::cout << "apexZ0: " << apexZ0
                                << " z_top_max: " << z_top_max
                                << " z_top_min: " << z_top_min << std::endl;)

      cover_make_patch_aligned_to_line(cover, row_data, num_points, apexZ0,
                                       z_top_max, false);

      patch_s *last_patch = patch_buffer_access_patch_ptr(&cover->patch_buffer,
                                                          cover->n_patches - 1);

      DEBUG_PRINT_ALL( // print superpoints of last_patch
          for (int i = 0; i < NUM_LAYERS; i++) {
            DEBUG(std::cout << "superpoint " << i
                            << " min: " << last_patch->superpoints[i].min
                            << " max: " << last_patch->superpoints[i].max
                            << std::endl;)
          })

      DEBUG_PRINT_ALL(
          std::cout << "top layer from "
                    << last_patch->superpoints[NUM_LAYERS - 1].max << " to "
                    << last_patch->superpoints[NUM_LAYERS - 1].min
                    << " z_top_max: " << z_top_max << std::endl;
          std::cout << "original: [" << last_patch->a_corner[0] << ", "
                    << last_patch->a_corner[1] << "] for patch "
                    << cover->n_patches << std::endl;
          std::cout << "original: [" << last_patch->b_corner[0] << ", "
                    << last_patch->b_corner[1] << "] for patch "
                    << cover->n_patches << std::endl;
          std::cout << "original: [" << last_patch->c_corner[0] << ", "
                    << last_patch->c_corner[1] << "] for patch "
                    << cover->n_patches << std::endl;
          std::cout << "original: [" << last_patch->d_corner[0] << ", "
                    << last_patch->d_corner[1] << "] for patch "
                    << cover->n_patches << std::endl;)

      for (int i = 1; i < NUM_LAYERS - 1; i++) {
        int j = i + 1;

        DEBUG_PRINT_ALL(
            std::cout << j << " superpoint: " << last_patch->superpoints[i].min
                      << " " << last_patch->superpoints[i].max
                      << " shadowTop from L1Max: "
                      << patch_straight_line_projector_from_layer_ij_to_k(
                             last_patch->superpoints[0].max,
                             last_patch->superpoints[i].min, 1, j, NUM_LAYERS)
                      << " "
                      << patch_straight_line_projector_from_layer_ij_to_k(
                             last_patch->superpoints[0].max,
                             last_patch->superpoints[i].max, 1, j, NUM_LAYERS)
                      << " from L1 min: "
                      << patch_straight_line_projector_from_layer_ij_to_k(
                             last_patch->superpoints[0].min,
                             last_patch->superpoints[i].min, 1, j, NUM_LAYERS)
                      << " "
                      << patch_straight_line_projector_from_layer_ij_to_k(
                             last_patch->superpoints[0].min,
                             last_patch->superpoints[i].max, 1, j, NUM_LAYERS)
                      << std::endl;)
      }

      float original_c = last_patch->c_corner[1];
      float original_d = last_patch->d_corner[1];

      c_corner = original_c;

      bool repeat_patch = false;
      bool repeat_original = false;

      DEBUG_PRINT_ALL(
          std::cout << "original c_corner: " << c_corner << std::endl;
          std::cout << "original d_corner: " << original_d << std::endl;
          std::cout << "patch size: " << cover->n_patches << std::endl;)

      if (cover->n_patches > 2) {
        patch_s *patch_depth_3 = patch_buffer_access_patch_ptr(
            &cover->patch_buffer, cover->n_patches - 3);

        bool cond_eq_0 =
            superpoint_eq(last_patch->superpoints[NUM_LAYERS - 1],
                          patch_depth_3->superpoints[NUM_LAYERS - 1]);
        bool cond_eq_1 = superpoint_eq(last_patch->superpoints[0],
                                       patch_depth_3->superpoints[0]);
        bool cond_eq_2 = superpoint_eq(last_patch->superpoints[1],
                                       patch_depth_3->superpoints[1]);
        bool cond_eq_3 = superpoint_eq(last_patch->superpoints[2],
                                       patch_depth_3->superpoints[2]);
        bool cond_eq_4 = superpoint_eq(last_patch->superpoints[3],
                                       patch_depth_3->superpoints[3]);
        repeat_original =
            cond_eq_0 && cond_eq_1 && cond_eq_2 && cond_eq_3 && cond_eq_4;
      }

      float seed_apexZ0 = apexZ0;

      projectionOfCornerToBeam =
          patch_straight_line_projector_from_layer_ij_to_k(
              last_patch->c_corner[1], last_patch->c_corner[0], NUM_LAYERS, 1,
              0);

      bool squarePatch_alternate1 = (last_patch->a_corner[1] > z_top_max) &&
                                    (last_patch->b_corner[1] > z_top_max) &&
                                    (last_patch->flatBottom);

      bool squarePatch_alternate2 =
          (last_patch->a_corner[1] > z_top_max) && (last_patch->flatBottom);

      bool notChoppedPatch = (last_patch->squareAcceptance) ||
                             squarePatch_alternate1 || squarePatch_alternate2;

      bool madeComplementaryPatch = false;

      int nPatchesAtOriginal = cover->n_patches;

      // print all ingredients
      DEBUG_PRINT_ALL(
          std::cout << "last_patch_c_corner[0]: " << last_patch->c_corner[0]
                    << std::endl;
          std::cout << "last_patch_c_corner[1]: " << last_patch->c_corner[1]
                    << std::endl;
          std::cout << "last_patch_a_corner[0]: " << last_patch->a_corner[0]
                    << std::endl;
          std::cout << "last_patch_a_corner[1]: " << last_patch->a_corner[1]
                    << std::endl;
          std::cout << "last_patch_b_corner[0]: " << last_patch->b_corner[0]
                    << std::endl;
          std::cout << "last_patch_b_corner[1]: " << last_patch->b_corner[1]
                    << std::endl;
          std::cout << "projectionOfCornerToBeam: " << projectionOfCornerToBeam
                    << std::endl;
          std::cout << "z_top_max: " << z_top_max << std::endl;
          std::cout << "last_patch_flatBottom: " << last_patch->flatBottom
                    << std::endl;)

      DEBUG_PRINT_ALL(
          std::cout << "squareAcceptance: " << last_patch->squareAcceptance
                    << " triangleAcceptance: " << last_patch->triangleAcceptance
                    << " projectionOfCornerToBeam: " << projectionOfCornerToBeam
                    << " notChoopedPatch: " << notChoppedPatch << std::endl;)

      if (!notChoppedPatch &&
          (last_patch->c_corner[1] > -1 * trapezoid_edges[NUM_LAYERS - 1]) &&
          (projectionOfCornerToBeam < BEAM_AXIS_LIM)) {
        complementary_apexZ0 = last_patch->superpoints[0].min;

        DEBUG_PRINT_ALL(std::cout << "complementary_apexZ0: "
                                  << complementary_apexZ0 << std::endl;)

        if ((last_patch->triangleAcceptance) && (!repeat_original)) {
          // TODO: this part of logic not tested yet!!!
        } else {

          DEBUG_PRINT_ALL(std::cout
                              << "z_top_min_before: " << z_top_min
                              << " superpoints[self.env.num_layers-1].min: "
                              << last_patch->superpoints[NUM_LAYERS - 1].min
                              << std::endl;)

          z_top_min = std::max(-1 * TOP_LAYER_LIM,
                               last_patch->superpoints[NUM_LAYERS - 1].min);

          DEBUG_PRINT_ALL(std::cout << "z_top_min_after: " << z_top_min
                                    << std::endl;)
        }
      }

      backup_cover_make_patch_aligned_to_line(
          cover, row_data, num_points, complementary_apexZ0, z_top_min, true);

      return;

      DEBUG_PRINT_ALL(std::cout << "number of patches: " << cover->n_patches
                                << std::endl;)

      patch_s *patch_depth_1 = patch_buffer_access_patch_ptr(
          &cover->patch_buffer, cover->n_patches - 1);
      patch_s *patch_depth_2 = patch_buffer_access_patch_ptr(
          &cover->patch_buffer, cover->n_patches - 2);

      // print superpoints of patch_depth_1
      DEBUG_PRINT_ALL(std::cout << "superpoints of patch_depth_1" << std::endl;
                      for (int i = 0; i < NUM_LAYERS; i++) {
                        std::cout
                            << "superpoint " << i
                            << " min: " << patch_depth_1->superpoints[i].min
                            << " max: " << patch_depth_1->superpoints[i].max
                            << std::endl;
                      })

      // print superpoints of patch_depth_2
      DEBUG_PRINT_ALL(std::cout << "superpoints of patch_depth_2" << std::endl;
                      for (int i = 0; i < NUM_LAYERS; i++) {
                        std::cout
                            << "superpoint " << i
                            << " min: " << patch_depth_2->superpoints[i].min
                            << " max: " << patch_depth_2->superpoints[i].max
                            << std::endl;
                      })

      DEBUG_PRINT_ALL(std::cout << "complementary_apexZ0: "
                                << complementary_apexZ0 << std::endl;
                      std::cout << "z_top_min: " << z_top_min << std::endl;)

      return;
    }
  }

  return;
}