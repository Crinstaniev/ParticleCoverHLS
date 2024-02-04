#ifndef __ENVIRONMENT_H__
#define __ENVIRONMENT_H__

#include "constants.h"
#include <cstddef>
#include <iostream>

typedef struct {
  double top_layer_lim;
  double beam_axis_lim;
  int num_layers;
  double radii[NUM_LAYERS];
  size_t radii_size;
  double parallelogramSlopes[NUM_LAYERS - 1];
  size_t parallelogramSlopes_size;
  double radii_leverArm[NUM_LAYERS - 1];
  size_t radii_leverArm_size;
  double boundaryPoint_offset;
  double trapezoid_edges[NUM_LAYERS];
  size_t trapezoid_edges_size;
} environment_s;

environment_s environment_init();

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const environment_s &env);

#endif