#pragma once

#include "constants.h"
#include "dataset.h"
#include "environment.h"
#include "patch.h"
#include "superpoint.h"

#include <cstddef>

typedef struct {
  size_t n_patches;
  patch_s patches[MAX_NUM_PATCHES];
  environment_s env;
  dataset_s data;
  int fitting_lines[MAX_NUM_POINTS];
  size_t n_fitting_lines;
  superpoint_s superpoints[NUM_LAYERS];
  size_t n_superpoints;
  patch_s all_patches[MAX_NUM_PATCHES];
  size_t n_all_patches;
  bool real_patch_list[MAX_NUM_PATCHES];
} cover_s;

cover_s cover_init(environment_s env, dataset_s data);

void cover_add_patch(cover_s &cover, patch_s curr_patch);

void cover_make_patch_aligned_to_line(cover_s &cover, double apexZ0 = 0,
                                      double z_top = -50, int ppl = 16,
                                      bool leftRight = true,
                                      bool double_middleLayers_ppl = false);

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const cover_s &cover);