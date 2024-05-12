#pragma once

#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>

void patch_buffer_add_patch(
    point_t patch_buffer[PATCH_BUFFER_SIZE][MAX_NUM_PATCHES]
                        [MAX_POINTS_PER_LAYER],
    index_t &latest_patch_index, index_t &num_patches);

void write_patch_stream(hls::stream<PointArr5x16_t> &patch_stream,
                        point_t patch_buffer[PATCH_BUFFER_SIZE][MAX_NUM_PATCHES]
                                            [MAX_POINTS_PER_LAYER],
                        index_t &latest_patch_index, index_t &num_patches);

void read_patch_stream(hls::stream<PointArr5x16_t> &patch_stream,
                       point_t patch_buffer[PATCH_BUFFER_SIZE][MAX_NUM_PATCHES]
                                           [MAX_POINTS_PER_LAYER],
                       index_t &latest_patch_index, index_t &num_patches);
