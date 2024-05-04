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

  read_file(file_path, points, num_points);

  return 0;
}