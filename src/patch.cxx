#include "patch.h"

#include <climits>

static double radii[NUM_LAYERS] = RADII_INITIALIZER;
static double trapezoid_edges[NUM_LAYERS] = TRAPEZOID_EDGES_INITIALIZER;

patch_s patch_init(environment_s env, superpoint_s *superpoints,
                   size_t n_superpoints, double apexZ0) {
  patch_s patch;

  patch.env = env;
  patch.end_layer = -1;
  patch.left_end_layer = -1;
  patch.right_end_layer = -1;
  patch.left_end_lambdaZ = INT32_MIN;
  patch.right_end_lambdaZ = INT32_MIN;
  patch.apexZ0 = apexZ0;

  patch.shadow_fromTopToInnermost_topL_jL = INT16_MIN;
  patch.shadow_fromTopToInnermost_topL_jR = INT16_MIN;
  patch.shadow_fromTopToInnermost_topR_jL = INT16_MIN;
  patch.shadow_fromTopToInnermost_topR_jR = INT16_MIN;

  // copy superpoints
  for (size_t i = 0; i < NUM_LAYERS; i++) {
    patch.superpoints[i] = superpoints[i];
  }

  return patch;
}

void patch_straight_line_projector_from_layer_ij_to_k(float *result, float z_i,
                                                      float z_j, float i,
                                                      float j, float k) {
  float radius_i = (i == 0) ? 0 : radii[(int)i - 1];
  float radius_j = (j == 0) ? 0 : radii[(int)j - 1];
  float radius_k = (k == 0) ? 0 : radii[(int)k - 1];

  float denominator = radius_j - radius_i;
  float numerator = radius_k - radius_i;
  float radii_leverArm = numerator / denominator;

  *result = z_i + (z_j - z_i) * radii_leverArm;
}

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const patch_s &p) {
  os << "patch_s: " << std::endl;
  // os << "  env: " << p.env << std::endl;
  os << "  end_layer: " << p.end_layer << std::endl;
  os << "  left_end_layer: " << p.left_end_layer << std::endl;
  os << "  right_end_layer: " << p.right_end_layer << std::endl;
  os << "  left_end_lambdaZ: " << p.left_end_lambdaZ << std::endl;
  os << "  right_end_lambdaZ: " << p.right_end_lambdaZ << std::endl;
  os << "  apexZ0: " << p.apexZ0 << std::endl;
  os << "  shadow_fromTopToInnermost_topL_jL: "
     << p.shadow_fromTopToInnermost_topL_jL << std::endl;
  os << "  shadow_fromTopToInnermost_topL_jR: "
     << p.shadow_fromTopToInnermost_topL_jR << std::endl;
  os << "  shadow_fromTopToInnermost_topR_jL: "
     << p.shadow_fromTopToInnermost_topR_jL << std::endl;
  os << "  shadow_fromTopToInnermost_topR_jR: "
     << p.shadow_fromTopToInnermost_topR_jR << std::endl;
  // os << "  superpoints: " << std::endl;
  // for (size_t i = 0; i < p.n_superpoints; i++) {
  //   os << p.superpoints[i] << std::endl;
  // }

  os << std::endl;

  return os;
}