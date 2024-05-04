#pragma once

#include "types.h"

#include <iostream>

using namespace std;

void read_file(string file_path, point_t[NUM_LAYERS][MAX_NUM_POINTS],
               index_t num_points[NUM_LAYERS]);