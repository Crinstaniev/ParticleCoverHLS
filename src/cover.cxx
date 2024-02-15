#include "cover.h"
#include "system.h"

cover_s cover_init(environment_s env, dataset_s data) {
  cover_s cover = {.n_patches = 0,
                   .env = env,
                   .data = data,
                   .n_fitting_lines = 0,
                   .n_superpoints = 0,
                   .n_all_patches = 0};

// set real_patch_list to false for all patches
loop_set_real_patch_list_to_false:
  for (size_t i = 0; i < MAX_NUM_PATCHES; i++) {
#pragma HLS unroll
    cover.real_patch_list[i] = false;
  }

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
                                      bool double_middleLayers_ppl) {}