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

void cover_init(cover_s *cover, dataset_s data);

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const cover_s &cover);