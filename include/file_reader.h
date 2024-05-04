#pragma once

#include "types.h"

#include <iostream>

using namespace std;

void read_file(string file_path, point_t points[NUM_LAYERS][MAX_NUM_POINTS],
               index_t num_points[NUM_LAYERS], CONST_ARRAY_ARGS,
               CONST_VALUE_ARGS);