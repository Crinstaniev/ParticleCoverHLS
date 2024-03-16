#include "cover.h"
#include "system.h"
#include <string>

int main(void) {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path, 128);

  point_s *points = events[0].list_of_points;
  environment_s env = events[0].env;

  dataset_s ds = dataset_init(env);

  dataset_import_data(ds, points, events[0].num_points);
  dataset_add_boundary_point(ds, 0.0001);

  cover_s cover = cover_init(env, ds);

  double apexZ0 = 7.75751;
  int ppl = 16;
  double z_top = -8.883753333333333;
  bool leftRight = false;

  // cover_make_patch_aligned_to_line(cover, apexZ0, z_top, ppl, leftRight);

  // print the cover
  // std::cout << cover << std::endl;

  return 0;
}
