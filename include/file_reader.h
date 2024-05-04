#pragma once

#include "types.h"

#include <iostream>

using namespace std;

void read_file(string file_path, point_t points[NUM_LAYERS][MAX_NUM_POINTS],
               index_t num_points[NUM_LAYERS], float_value_t radii[NUM_LAYERS],
               float_value_t trapezoid_edges[NUM_LAYERS],
               float_value_t parallelogram_slopes[NUM_LAYERS - 1],
               float_value_t radii_leverArm[NUM_LAYERS - 1]);