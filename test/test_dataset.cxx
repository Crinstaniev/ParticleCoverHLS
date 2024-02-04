#include "constants.h"
#include "dataset.h"
#include "environment.h"
#include "event.h"
#include "file_reader.h"
#include "point.h"
#include <string>

int main(void) {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path, 128);
  point_s *points = events[0].list_of_points;
  environment_s env = events[0].env;

  env = environment_init();

  dataset_s ds = dataset_init(env);

  dataset_import_data(ds, points, events[0].num_points);
  dataset_add_boundary_point(ds, 0.0001);

  

  return 0;
}