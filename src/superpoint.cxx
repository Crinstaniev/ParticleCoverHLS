#include "superpoint.h"
#include "constants.h"

#include <algorithm>

superpoint_s superpoint_init(point_s *points, size_t n_points) {
  superpoint_s superpoint;

  double z_list[MAX_NUM_POINTS];

// copy points
loop_copy_points_to_superpoint:
  for (size_t i = 0; i < n_points; i++) {
#pragma HLS UNROLL
    z_list[i] = points[i].z;
    superpoint.z_values[i] = z_list[i];
    superpoint.points[i] = points[i];
  }

  superpoint.n_points = n_points;

  // this part should be opimized
  double min = z_list[0];
  double max = z_list[0];
  for (size_t i = 1; i < n_points; i++) {
#pragma HLS PIPELINE
    min = std::min(min, z_list[i]);
    max = std::max(max, z_list[i]);
  }
  superpoint.min = min;
  superpoint.max = max;

  return superpoint;
}

bool superpoint_eq(superpoint_s sp1, superpoint_s sp2) {
  // true condition: same min and same max
  return (sp1.min == sp2.min) && (sp1.max == sp2.max);
}

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const superpoint_s &sp) {
  // pretty print superpoint
  os << "superpoint_s: " << std::endl;
  os << "  min: " << sp.min << std::endl;
  os << "  max: " << sp.max << std::endl;
  os << "  z_values: ";
  for (size_t i = 0; i < sp.n_points; i++) {
    os << sp.z_values[i] << " ";
  }
  os << std::endl;

  return os;
}