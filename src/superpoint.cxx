#include "types.h"
#include "utils.h"
#include <assert.h>
#include <iostream>

superPoints_s superPoint_init(PointArr_s points_arr) {
#ifdef DEBUG
  // size of point array should be 31 or 32
  assert(points_arr.num_points == 31 || points_arr.num_points == 32);
#endif

  // create new superpoint
  superPoints_s new_superpoint;

  double z_list[MAX_NUM_POINTS];

loop_copy_z_values:
  for (size_t i = 0; i < points_arr.num_points; i++) {
#pragma HLS UNROLL
    new_superpoint.z_values[i] = points_arr.points[i].z;
  }

  new_superpoint.points = points_arr;

  // max and min z values
  new_superpoint.max = find_max_in_array<double>(z_list, points_arr.num_points);
  new_superpoint.min = find_min_in_array<double>(z_list, points_arr.num_points);

  return new_superpoint;
}

bool superPoint_is_eq(superPoints_s sp_1, superPoints_s sp_2) {
  // true if min and max values are equal
  if (sp_1.min == sp_2.min && sp_1.max == sp_2.max) {
    return true;
  }
  return false;
}