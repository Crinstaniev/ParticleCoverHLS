#include "patch.h"
#include "constants.h"

#include <climits>
#include <iostream>

// static double radii[NUM_LAYERS] = RADII_INITIALIZER;
// static double trapezoid_edges[NUM_LAYERS] = TRAPEZOID_EDGES_INITIALIZER;

patch_s patch_init(superpoint_s *superpoints, size_t n_superpoints,
                   double apexZ0) {
  patch_s patch;

  //   patch.env = env;
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

  patch_get_parallelograms(&patch);

  return patch;
}

float patch_straight_line_projector_from_layer_ij_to_k(float z_i, float z_j,
                                                       int i, int j, int k) {
  float radius_i = 0;
  float radius_j = 0;
  float radius_k = 0;

  if (i == 0) {
    radius_i = 0;
  } else {
    radius_i = radii[i - 1];
  }
  if (j == 0) {
    radius_j = 0;
  } else {
    radius_j = radii[j - 1];
  }
  if (k == 0) {
    radius_k = 0;
  } else {
    radius_k = radii[k - 1];
  }

  float radii_leverArm = (radius_k - radius_i) / (radius_j - radius_i);

  return z_i + (z_j - z_i) * radii_leverArm;
}

void patch_get_parallelograms(patch_s *patch) {
  CONST_ARRAY_INITIALIZER;

  float z1_min = std::max(patch->superpoints[0].min, -1 * trapezoid_edges[0]);
  float z1_max = std::min(patch->superpoints[0].max, trapezoid_edges[0]);

  if (z1_min > z1_max) {
    z1_min = trapezoid_edges[0] + 1;
    z1_max = z1_min;
  }

  // this part guaranteed!
  std::cout << "z1_min: " << z1_min << std::endl;
  std::cout << "z1_max: " << z1_max << std::endl;

  // print superpoint 0
  // std::cout << patch->superpoints[0] << std::endl;

  for (int i = 1; i < NUM_LAYERS; i++) {
    int j = i + 1;

    float z_j_min = patch->superpoints[i].min;
    float z_j_max = patch->superpoints[i].max;

    std::cout << "z_j_min: " << z_j_min << std::endl;
    std::cout << "z_j_max: " << z_j_max << std::endl;

    // print this superpoint
    // std::cout << patch->superpoints[i] << std::endl;

    float a = patch_straight_line_projector_from_layer_ij_to_k(
        z1_min, z_j_max, 1, j, NUM_LAYERS);
    float b = patch_straight_line_projector_from_layer_ij_to_k(
        z1_max, z_j_max, 1, j, NUM_LAYERS);
    float c = patch_straight_line_projector_from_layer_ij_to_k(
        z1_min, z_j_min, 1, j, NUM_LAYERS);
    float d = patch_straight_line_projector_from_layer_ij_to_k(
        z1_max, z_j_min, 1, j, NUM_LAYERS);

    // // this part guaranteed for first run!
    // std::cout << "a: " << a << std::endl;
    // std::cout << "b: " << b << std::endl;
    // std::cout << "c: " << c << std::endl;
    // std::cout << "d: " << d << std::endl;

    float pSlope;

    if (j != NUM_LAYERS) {
      // resume here
      pSlope = parallelogram_slopes[j - 1];
    } else {
      pSlope = INT_MAX;
    }

    // std::cout << "pSlope: " << pSlope << std::endl;

    parallelogram_s parallelogram;
    parallelogram_init(&parallelogram, j, z1_min, z1_max, a, b, c, d, pSlope);
    patch->parallelograms[i - 1] = parallelogram;

    // std::cout << patch->parallelograms[i - 1] << std::endl;
  }

  // print all parallelograms: guaranteed
  // for (int i = 0; i < NUM_LAYERS - 1; i++) {
  //   std::cout << patch->parallelograms[i] << std::endl;
  // }

  return;
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