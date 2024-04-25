#ifndef __ENVIRONMENT_H__
#define __ENVIRONMENT_H__

#include "constants.h"
#include <cstddef>
#include <iostream>

typedef struct {
  float top_layer_lim;
  float beam_axis_lim;
  int num_layers;
  float radii[NUM_LAYERS];
  size_t radii_size;
  float parallelogramSlopes[NUM_LAYERS - 1];
  size_t parallelogramSlopes_size;
  float radii_leverArm[NUM_LAYERS - 1];
  size_t radii_leverArm_size;
  float boundaryPoint_offset;
  float trapezoid_edges[NUM_LAYERS];
  size_t trapezoid_edges_size;
} environment_s;

environment_s environment_init();

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const environment_s &env);

#endif