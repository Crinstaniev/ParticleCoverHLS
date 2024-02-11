
#include "system.h"

#include <iostream>
#include <stdlib.h>

// TOP-LEVEL FUNCTION
void system_top(event_s event, size_t *total_result) {
  point_s *points = event.list_of_points;
  size_t num_points = event.num_points;
  environment_s env = event.env;

  dataset_s ds = dataset_init(env);
  // import data
  dataset_import_data(ds, points, num_points);
  // add boundary point
  dataset_add_boundary_point(ds, 0.0001);

  // validation
  *total_result = ds.total_points;

  return;
}

// dummy main function
int main(void) {
  std::cerr << "This is a dummy main function" << std::endl;
  return 0;
}
