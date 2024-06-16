#pragma once

#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>

void patch_buffer_add_patch(
    point_t new_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    index_t &latest_patch_index, index_t &num_patches);

void write_patch_stream(hls::stream<point_t> &patch_stream,
                        point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]);

void read_patch_stream(hls::stream<point_t> &patch_stream,
                       point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]);
