#include "debug.h"
#include "parser.h"
#include <stdio.h>
#include <stdlib.h>

int main() {

  print_constants();

  // read the points from the file
  char *file_path = "../../../data/wedgeData_v3_128.txt";
  PointArr_s data_points_arr = init_PointArr();
  read_points(file_path, &data_points_arr);

  // print the points
  print_DataPointArr(&data_points_arr);

  return 0;
}
