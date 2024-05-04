#include "system.h"
#include <iostream>
#include <string>

int main(void) {
#if CONFIG_IS_SYNTHESIS == true
  std::string file_path = "../../../data/wedgeData_v3_128.txt";
#else
  std::string file_path = "../data/wedgeData_v3_128.txt";
#endif

  event_s *events = file_reader_read(file_path, 128);
  point_s *points = events[0].list_of_points;
  environment_s env = events[0].env;
  dataset_s ds = dataset_init(env);

  dataset_import_data(ds, points, events[0].num_points);
  dataset_add_boundary_point(ds, 0.0001);

  float apexZ0 = 7.75751;
  int ppl = 16;
  float z_top = -8.883753333333333;
  bool leftRight = false;

  cover_s cover;
  cover_init(&cover);

  point_s row_data[NUM_LAYERS][MAX_POINTS_PER_LAYER];
  // copy ds.array to row_data
  for (int i = 0; i < NUM_LAYERS; i++) {
    for (int j = 0; j < MAX_POINTS_PER_LAYER; j++) {
      row_data[i][j] = ds.array[i][j];
    }
  }

  int num_points[NUM_LAYERS];
  for (int i = 0; i < NUM_LAYERS; i++) {
    num_points[i] = ds.n_points[i];
  }

  system_top(&cover, row_data, num_points);

  return 0;
}