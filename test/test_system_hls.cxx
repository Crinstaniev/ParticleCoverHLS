#include "system.h"

#include <cstddef>
#include <iostream>
#include <string>

int main(void) {
  // prepare data to read
  std::cout << "[IMFO] Preparing data for system" << std::endl;
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path);

  event_s event = events[0];
  point_s *points = event.list_of_points;
  size_t num_points = event.num_points;
  environment_s env = event.env;

  dataset_s ds = dataset_init(env);
  // import data
  dataset_import_data(ds, points, num_points);
  // add boundary point
  dataset_add_boundary_point(ds, 0.0001);
  cover_s cover = cover_init(env, ds);

  // run system
  std::cout << "[IMFO] Running System" << std::endl;

  // system_top
  std::cout << "[IMFO] Running system_top" << std::endl;
  system_top(&cover);

  // print the cover
  std::cout << cover << std::endl;

  return 0;
}