#pragma once

#include <hls_stream.h>

#include "config.h"
#include "types.h"

void system_top(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                index_t num_points[NUM_LAYERS],
                hls::stream<point_t> &patch_stream);