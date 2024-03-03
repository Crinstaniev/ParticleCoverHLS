#include "cover.h"
#include "patch.h"
#include "system.h"

#include <climits>

cover_s cover_init(environment_s env, dataset_s data) {
  cover_s cover;
  cover.n_patches = 0;
  cover.env = env;
  cover.data = data;
  cover.n_fitting_lines = 0;
  cover.n_superpoints = 0;
  cover.n_all_patches = 0;

// set real_patch_list to false for all patches
loop_set_real_patch_list_to_false:
  for (size_t i = 0; i < MAX_NUM_PATCHES; i++) {
#pragma HLS unroll
    cover.real_patch_list[i] = false;
  }

  return cover;
}

// void cover_add_patch(cover_s &cover, patch_s curr_patch) {
//   if (cover.n_patches == 0) {
//     // add current patch to patches
//     cover.patches[cover.n_patches] = curr_patch;
//     cover.n_patches++;

//     // add current patch to all_patches
//     cover.all_patches[cover.n_all_patches] = curr_patch;
//     cover.n_all_patches++;

//     // set real_patch_list to true for current patch
//     cover.real_patch_list[cover.n_all_patches - 1] = true;
//   } else {
//     // set prev patch to last patch
//     patch_s prev_patch = cover.patches[cover.n_patches - 1];
//     superpoint_s prev_sp[NUM_LAYERS];

//     for (size_t i = 0; i < NUM_LAYERS; i++) {
//       prev_sp[i] = prev_patch.superpoints[i];
//     }

//     superpoint_s curr_sp[NUM_LAYERS];

//     for (size_t i = 0; i < NUM_LAYERS; i++) {
//       curr_sp[i] = curr_patch.superpoints[i];
//     }

//     for (size_t i = 0; i < NUM_LAYERS; i++) {
//       if ((prev_sp[i].min != curr_sp[i].min) ||
//           (prev_sp[i].max != curr_sp[i].max)) {
//         cover.patches[cover.n_patches] = curr_patch;
//         cover.n_patches++;
//         cover.all_patches[cover.n_all_patches] = curr_patch;
//         cover.n_all_patches++;
//         cover.real_patch_list[cover.n_all_patches - 1] = true;
//         break;
//       }
//     }
//   }
// }

// void cover_make_patch_aligned_to_line(cover_s &cover, double apexZ0,
//                                       double z_top, int ppl, bool leftRight,
//                                       bool double_middleLayers_ppl) {
//   superpoint_s init_patch[NUM_LAYERS];

//   size_t init_patch_size = 0;
//   int original_ppl = ppl;
//   double alignmentAccuracy = 0.00001;

//   point_s row_data[NUM_LAYERS][MAX_NUM_POINTS];
//   size_t row_data_size[NUM_LAYERS];
//   // copy cover.data.array to row_data
//   for (size_t i = 0; i < NUM_LAYERS; i++) {
//     for (size_t j = 0; j < MAX_NUM_POINTS; j++) {
//       row_data[i][j] = cover.data.array[i][j];
//     }
//     row_data_size[i] = cover.data.n_points[i];
//   }

//   for (int i = 0; i < NUM_LAYERS; i++) {
//     double y = cover.env.radii[i];

//     double row_list[MAX_NUM_POINTS];
//     size_t row_list_size = 0;

//     for (int j = 0; j < row_data_size[i]; j++) {
//       row_list[j] = row_data[i][j].z;
//       row_list_size++;
//     }

//     double r_max = cover.env.radii[NUM_LAYERS - 1];

//     double projectionToRow = (z_top - apexZ0) * (y - cover.env.radii[0]) /
//                                  (r_max - cover.env.radii[0]) +
//                              apexZ0;

//     int start_index = 0;
//     double start_value = INT_MAX;

//     for (int j = 0; j < row_list_size; j++) {
//       if (abs(row_list[j] - projectionToRow) < abs(start_value)) {
//         start_index = j;
//         start_value = row_list[j] - projectionToRow;
//       }
//     }

//     int left_bound = 0;
//     double lbVal = INT_MAX;
//     int right_bound = 0;
//     double rbVal = INT_MAX;

//     for (int j = 0; j < row_list_size; j++) {
//       if (abs((row_list[j] + cover.env.trapezoid_edges[i] +
//                cover.env.boundaryPoint_offset)) < lbVal) {
//         left_bound = j;
//         lbVal = abs((row_list[j] + cover.env.trapezoid_edges[i] +
//                      cover.env.boundaryPoint_offset));
//       }

//       if (abs((row_list[j] - cover.env.trapezoid_edges[i] -
//                cover.env.boundaryPoint_offset)) < rbVal) {
//         right_bound = j;
//         rbVal = abs((row_list[j] - cover.env.trapezoid_edges[i] -
//                      cover.env.boundaryPoint_offset));
//       }
//     }

//     if (double_middleLayers_ppl && (i != 0) && (i != NUM_LAYERS - 1)) {
//       ppl = original_ppl * 2 - 1;
//     } else {
//       ppl = original_ppl;
//     }

//     // leftright = false
//     {
//       if (start_index != (row_list_size - 1)) {
//         // std::cout << "row " << i + 1 << " start_index " << start_index
//         //           << " start_value " << start_value
//         //           << " z: " << row_list[start_index] << std::endl;
//         if (start_value < -1 * alignmentAccuracy) {
//           start_index++;
//           start_value = row_list[start_index] - projectionToRow;
//           // std::cout << "row " << i + 1 << " updated start_index " <<
//           // start_index
//           //           << " start_value " << start_value
//           //           << " z: " << row_list[start_index] << std::endl;
//         }
//       }

//       if ((start_index - ppl + 1) < left_bound) {
//         superpoint_s payload;
//         payload.min = left_bound;
//         payload.max = left_bound + ppl;
//         for (int j = left_bound; j < left_bound + ppl; j++) {
//           payload.z_values[j - left_bound] = row_list[j];
//           payload.points[j - left_bound] = row_data[i][j];
//         }
//         payload.n_points = ppl;
//         init_patch[init_patch_size] = payload;
//         init_patch_size++;
//       } else {
//         superpoint_s payload;
//         payload.min = start_index - ppl + 1;
//         payload.max = start_index + 1;
//         for (int j = start_index - ppl + 1; j < start_index + 1; j++) {
//           payload.z_values[j - (start_index - ppl + 1)] = row_list[j];
//           payload.points[j - (start_index - ppl + 1)] = row_data[i][j];
//         }
//         payload.n_points = ppl;
//         init_patch[init_patch_size] = payload;
//         init_patch_size++;
//       }
//     }
//   }

//   cover_add_patch(cover,
//                   patch_init(cover.env, init_patch, init_patch_size, apexZ0));

//   // std::cout << cover << std::endl;

//   return;
// }

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const cover_s &cover) {
  os << "cover_s: " << std::endl;
  os << "  n_patches: " << cover.n_patches << std::endl;
  os << "  n_fitting_lines: " << cover.n_fitting_lines << std::endl;
  os << "  n_superpoints: " << cover.n_superpoints << std::endl;
  os << "  n_all_patches: " << cover.n_all_patches << std::endl;
  os << "  real_patch_list: ";
  for (size_t i = 0; i < MAX_NUM_PATCHES; i++) {
    os << cover.real_patch_list[i] << " ";
  }
  os << std::endl;

  return os;
}