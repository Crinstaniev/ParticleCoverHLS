#include "environment.h"
#include "constants.h"
#include <ctype.h>
#include <iostream>

environment_s environment_init() {
  environment_s env;

  // sizes
  env.radii_size = 0;
  env.parallelogramSlopes_size = 0;
  env.radii_leverArm_size = 0;
  env.trapezoid_edges_size = 0;

  env.top_layer_lim = TOP_LAYER_LIM;
  env.beam_axis_lim = BEAM_AXIS_LIM;
  env.num_layers = NUM_LAYERS;
  env.radii[0] = RADII[0];
  env.radii[1] = RADII[1];
  env.radii[2] = RADII[2];
  env.radii[3] = RADII[3];
  env.radii[4] = RADII[4];

  // calculate parallelogram slopes
  for (size_t i = 0; i < NUM_LAYERS - 1; ++i) {
    float currentVal = (env.radii[0] - env.radii[i]) /
                        (env.radii[NUM_LAYERS - 1] - env.radii[i]);
    env.parallelogramSlopes[i] = currentVal;
    env.parallelogramSlopes_size++;
  }

  // calculate radii lever arm
  for (size_t i = 0; i < env.parallelogramSlopes_size; ++i) {
    env.radii_leverArm[i] = 1 - env.parallelogramSlopes[i];
    env.radii_leverArm_size++;
  }

  env.boundaryPoint_offset = 0;

  // calculate trapezoid edges
  for (size_t i = 0; i < env.num_layers; ++i) {
    float currentVal = env.radii[i] * (env.top_layer_lim - env.beam_axis_lim) /
                            env.radii[env.num_layers - 1] +
                        env.beam_axis_lim;
    env.trapezoid_edges[i] = currentVal;
    env.trapezoid_edges_size++;
  }

  return env;
}

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const environment_s &env) {
  os << "Top Layer Limit: " << env.top_layer_lim << std::endl;
  os << "Beam Axis Limit: " << env.beam_axis_lim << std::endl;
  os << "Number of Layers: " << env.num_layers << std::endl;
  os << "Radii: ";
  for (size_t i = 0; i < env.radii_size; ++i) {
    os << env.radii[i] << " ";
  }
  os << std::endl;
  os << "Parallelogram Slopes: ";
  for (size_t i = 0; i < env.parallelogramSlopes_size; ++i) {
    os << env.parallelogramSlopes[i] << " ";
  }
  os << std::endl;
  os << "Radii Lever Arm: ";
  for (size_t i = 0; i < env.radii_leverArm_size; ++i) {
    os << env.radii_leverArm[i] << " ";
  }
  os << std::endl;
  os << "Boundary Point Offset: " << env.boundaryPoint_offset << std::endl;
  os << "Trapezoid Edges: ";
  for (size_t i = 0; i < env.trapezoid_edges_size; ++i) {
    os << env.trapezoid_edges[i] << " ";
  }
  os << std::endl;
  return os;
}