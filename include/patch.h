#ifndef __PATCH_H__
#define __PATCH_H__

#include "constants.h"
#include "environment.h"
#include "parallelogram.h"
#include "superpoint.h"

#include <cstddef>

typedef struct {
  environment_s env;
  int end_layer;
  int left_end_layer;
  int right_end_layer;
  float left_end_lambdaZ;
  float right_end_lambdaZ;
  float apexZ0;

  int shadow_fromTopToInnermost_topL_jL;
  int shadow_fromTopToInnermost_topL_jR;
  int shadow_fromTopToInnermost_topR_jL;
  int shadow_fromTopToInnermost_topR_jR;

  float a_corner[NUM_LAYERS - 1];
  float b_corner[NUM_LAYERS - 1];
  float c_corner[NUM_LAYERS - 1];
  float d_corner[NUM_LAYERS - 1];

  superpoint_s superpoints[NUM_LAYERS];
  size_t n_superpoints;

  bool flatBottom;
  bool flatTop;

  bool squareAcceptance;
  bool triangleAcceptance;

  parallelogram_s parallelograms[NUM_LAYERS - 1];
} patch_s;

patch_s patch_init(superpoint_s *superpoints, float apexZ0);

void patch_get_parallelograms(patch_s *patch);

void patch_get_acceptance_corners(patch_s *patch);

void patch_get_end_layers(patch_s *patch);

float patch_straight_line_projector_from_layer_ij_to_k(float z_i, float z_j,
                                                       int i, int j, int k);

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const patch_s &p);

#endif // __PATCH_H__