#include "patch.h"

#include <climits>

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

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const patch_s &p) {
  os << "patch_s: " << std::endl;
  os << "  env: " << p.env << std::endl;
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
  os << "  superpoints: " << std::endl;
  for (size_t i = 0; i < p.n_superpoints; i++) {
    os << p.superpoints[i] << std::endl;
  }

  os << std::endl;

  return os;
}