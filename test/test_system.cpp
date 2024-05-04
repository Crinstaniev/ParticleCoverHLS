#include "config.h"
#include "file_reader.h"
#include "types.h"

#include <iostream>
#include <string>

int main() {
// main function for testing
#if CONFIG_IS_SYNTHESIS == false
  string file_path = "./wedgeData_v3_128.txt";
#else
  string file_path = "../../../data/wedgeData_v3_128.txt";
#endif

  point_t points[NUM_LAYERS][MAX_NUM_POINTS];
  index_t num_points[NUM_LAYERS];
  float_value_t radii[NUM_LAYERS];
  float_value_t trapezoid_edges[NUM_LAYERS];
  float_value_t parallelogram_slopes[NUM_LAYERS - 1];
  float_value_t radii_leverArm[NUM_LAYERS - 1];

  read_file(file_path, points, num_points, radii, trapezoid_edges,
            parallelogram_slopes, radii_leverArm);

  return 0;
}