/**
 * When producing patches, the patch maker will have access
 * to at most 3 prevoius patches. Therefore, the patch buffer
 * has a depth of 3, maintained by a circular buffer.
 */

#pragma once

#include "patch.h"
#include <iostream>

#define PATCH_BUFFER_DEPTH 3

typedef struct patch_buffer_s {
  patch_s patches[PATCH_BUFFER_DEPTH]; // buffer to store patches
  int head_idx;                        // head of the buffer
  int size;                            // current size of the buffer
  int capacity;                        // maximum capacity of the buffer
  int tail;                            // tail of the buffer
} patch_buffer_s;

void patch_buffer_init(patch_buffer_s *buffer);

void patch_buffer_push_patch(patch_buffer_s *buffer, patch_s patch);

void patch_buffer_access_patch(patch_buffer_s *buffer, int depth,
                               patch_s *patch);