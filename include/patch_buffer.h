#pragma once

#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>

#define LATEST_PATCH_INDEX                                                     \
  patch_buffer_get_patch_index(0, num_patches, patch_buffer_order)

#define PREVIOUS_PATCH_INDEX                                                   \
  patch_buffer_get_patch_index(1, num_patches, patch_buffer_order)

void patch_buffer_add_patch(
    point_t new_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    bool patch_buffer_valid[PATCH_BUFFER_SIZE],
    index_t patch_buffer_order[PATCH_BUFFER_SIZE], index_t &latest_patch_index,
    index_t &num_patches, hls::stream<point_t> &patch_stream);

void patch_buffer_delete_patch(
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    bool patch_buffer_valid[PATCH_BUFFER_SIZE],
    index_t patch_buffer_order[PATCH_BUFFER_SIZE], index_t &latest_patch_index,
    index_t &num_patches, index_t patch_depth);

index_t
patch_buffer_get_patch_index(index_t patch_depth, index_t num_patches,
                             index_t patch_buffer_order[PATCH_BUFFER_SIZE]);

void write_patch_stream(hls::stream<point_t> &patch_stream,
                        point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]);

void read_patch_stream(hls::stream<point_t> &patch_stream,
                       point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]);
