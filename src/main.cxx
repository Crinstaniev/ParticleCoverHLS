#include "debug.h"
#include "parser.h"
#include <stdio.h>
#include <stdlib.h>
#include <string>

int main() {

#ifdef DEBUG
  printf("[INFO] Running in debug mode.\n");
  // read the points from the file
  // char *file_path = "../data/wedgeData_v3_128.txt";
  std::string file_path_str = "../data/wedgeData_v3_128.txt";
  char *file_path = (char *)file_path_str.c_str();
#else
  // read the points from the file
  char *file_path = "../../../data/wedgeData_v3_128.txt";
#endif

  print_constants();

  PointArr_s data_points_arr = init_PointArr();
  read_points(file_path, &data_points_arr);

  // print the points
  print_DataPointArr(&data_points_arr);

  return 0;
}
