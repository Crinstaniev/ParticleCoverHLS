#pragma once

#include "constants.h"
#include "dataset.h"
#include "environment.h"
#include "patch.h"
#include "patch_buffer.h"
#include "superpoint.h"

#include <cstddef>

typedef struct {
  patch_buffer_s patch_buffer;
  size_t n_patches;
} cover_s;

void cover_init(cover_s *cover);

void cover_make_patch_aligned_to_line(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS], double apexZ0, double z_top);

void cover_make_patch_shadow_quilt_from_edges(
    cover_s *cover, point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER],
    int num_points[NUM_LAYERS]);

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const cover_s &cover);