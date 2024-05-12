#pragma once

#include <hls_stream.h>

#include "config.h"
#include "types.h"

void system_top(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                index_t num_points[NUM_LAYERS], CONST_ARRAY_ARGS,
                CONST_VALUE_ARGS, hls::stream<PointArr5x16_t> &patch_stream);