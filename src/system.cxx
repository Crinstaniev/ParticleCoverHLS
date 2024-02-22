
#include "system.h"

#include <iostream>
#include <stdlib.h>

void presynthesis(event_s event) {
  /**
   * This function prepares data to feed the circuitry.
   */
  // some constants
  double apexZ0 = 7.75751;
  int ppl = 16;
  double z_top = -8.883753333333333;
  bool leftRight = false;

  // prepare environment
  environment_s env = event.env;
  // prepare points
  point_s *points = event.list_of_points;
  size_t num_points = event.num_points;

  return;
}

// TOP-LEVEL FUNCTION
void system_top(event_s event, cover_s *cover_result) {
  point_s *points = event.list_of_points;
  size_t num_points = event.num_points;
  environment_s env = event.env;

  dataset_s ds = dataset_init(env);
  // import data
  dataset_import_data(ds, points, num_points);
  // add boundary point
  dataset_add_boundary_point(ds, 0.0001);

  cover_s cover = cover_init(env, ds);

  double apexZ0 = 7.75751;
  int ppl = 16;
  double z_top = -8.883753333333333;
  bool leftRight = false;

  cover_make_patch_aligned_to_line(cover, apexZ0, z_top, ppl, leftRight);

  // copy the result
  *cover_result = cover;

  return;
}

// dummy main function
int main(void) {
  std::cerr << "This is a dummy main function" << std::endl;
  return 0;
}
