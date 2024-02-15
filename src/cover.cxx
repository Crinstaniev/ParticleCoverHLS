#include "cover.h"
#include "system.h"

cover_s cover_init() {
  // cover_s cover_init(environment_s env, dataset_s data) {
  // cover_s cover = {.n_patches = 0,
  //                  .env = env,
  //                  .data = data,
  //                  .n_fitting_lines = 0,
  //                  .n_superpoints = 0,
  //                  .n_all_patches = 0};

  // set real_patch_list to false for all patches
  // loop_set_real_patch_list_to_false:
  //   for (size_t i = 0; i < MAX_NUM_PATCHES; i++) {
  // #pragma HLS unroll
  //     cover.real_patch_list[i] = false;
  //   }

  cover_s cover;

  return cover;
}

void cover_add_patch(cover_s &cover, patch_s curr_patch) {
  if (cover.n_patches == 0) {
    // add current patch to patches
    cover.patches[cover.n_patches] = curr_patch;
    cover.n_patches++;

    // add current patch to all_patches
    cover.all_patches[cover.n_all_patches] = curr_patch;
    cover.n_all_patches++;

    // set real_patch_list to true for current patch
    cover.real_patch_list[cover.n_all_patches] = true;
  } else {
    // set prev patch to last patch
    patch_s prev_patch = cover.patches[cover.n_patches - 1];
    superpoint_s prev_sp[NUM_LAYERS];

    for (size_t i = 0; i < NUM_LAYERS; i++) {
      prev_sp[i] = prev_patch.superpoints[i];
    }

    superpoint_s curr_sp[NUM_LAYERS];

    for (size_t i = 0; i < NUM_LAYERS; i++) {
      curr_sp[i] = curr_patch.superpoints[i];
    }

    for (size_t i = 0; i < NUM_LAYERS; i++) {
      if ((prev_sp[i].min != curr_sp[i].min) ||
          (prev_sp[i].max != curr_sp[i].max)) {
        cover.patches[cover.n_patches] = curr_patch;
        cover.n_patches++;
        cover.all_patches[cover.n_all_patches] = curr_patch;
        cover.n_all_patches++;
        cover.real_patch_list[cover.n_all_patches] = true;
        break;
      }
    }
  }
}

void cover_make_patch_aligned_to_line(cover_s &cover, double apexZ0,
                                      double z_top, int ppl, bool leftRight,
                                      bool double_middleLayers_ppl) {
  superpoint_s init_patch[NUM_LAYERS]; // TODO: figure out exact size
  size_t init_patch_size = 0;

  int original_ppl = ppl;
  double alignmentAccuracy = 0.00001;

  point_s row_data[NUM_LAYERS][MAX_NUM_POINTS];

// set row data to cover.data.array
loop_init_row_data_outer:
  for (size_t i = 0; i < NUM_LAYERS; i++) {
#pragma HLS unroll
  loop_init_row_data_inner:
    for (size_t j = 0; j < MAX_NUM_POINTS; j++) {
#pragma HLS unroll
      row_data[i][j] = cover.data.array[i][j];
    }
  }

  for (size_t i = 0; i < NUM_LAYERS; i++) {
    double y = cover.env.radii[i];
    double row_list[MAX_NUM_POINTS]; // TODO: figure out exact size

    for (size_t j = 0; j < NUM_LAYERS; j++) {
      row_list[j] = row_data[i][j].z;
    }

    // env.radii.back()
    double r_max = cover.env.radii[NUM_LAYERS - 1];

    double projectionToRow = (z_top - apexZ0) * (y - cover.env.radii[0]) /
                                 (r_max - cover.env.radii[0]) +
                             apexZ0;

    int start_index = 0;
    double start_value = INT_MAX;

    for (size_t j = 0; j < MAX_NUM_POINTS; j++) {
      if (abs(row_list[j] - projectionToRow) < abs(start_value)) {
        start_index = j;
        start_value = row_list[j] - projectionToRow;
      }
    }

    int left_bound = 0;
    double lbVal = INT_MAX;
    int right_bound = 0;
    double rbVal = INT_MAX;
  }

  return;
}