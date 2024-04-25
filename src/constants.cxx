#include "constants.h"
#include "debug.h"
#include <iostream>

void radii_initializer(double radii[NUM_LAYERS]) {
  radii[0] = 5.0;
  radii[1] = 10.0;
  radii[2] = 15.0;
  radii[3] = 20.0;
  radii[4] = 25.0;

  return;
}

void trapezoid_edges_initializer(double *trapezoid_edges, double *radii) {
  for (int i = 0; i < NUM_LAYERS; i++) {
    double currentVal =
        radii[i] * (TOP_LAYER_LIM - BEAM_AXIS_LIM) / radii[NUM_LAYERS - 1] +
        BEAM_AXIS_LIM;
    trapezoid_edges[i] = currentVal;
  }

  return;
}

void parallelogram_slopes_initializer(double *parallelogram_slopes,
                                      double *radii) {

  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    parallelogram_slopes[i] =
        (radii[0] - radii[i]) / (radii[NUM_LAYERS - 1] - radii[i]);
  }

  return;
}

void radii_leverArm_initializer(double *radii_leverArm,
                                double *parallelogram_slopes) {
  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    radii_leverArm[i] = (1 - parallelogram_slopes[i]);
  }

  return;
}

void const_array_initializer(double *radii, double *trapezoid_edges,
                             double *parallelogram_slopes,
                             double *radii_leverArm) {

  radii_initializer(radii);
  parallelogram_slopes_initializer(parallelogram_slopes, radii);
  radii_leverArm_initializer(radii_leverArm, radii);
  trapezoid_edges_initializer(trapezoid_edges, radii);

  return;
}

void print_const_arrays(double *radii, double *trapezoid_edges,
                        double *parallelogram_slopes, double *radii_leverArm) {
  std::cout << "radii: ";
  for (int i = 0; i < NUM_LAYERS; i++) {
    std::cout << radii[i] << " ";
  }
  std::cout << std::endl;

  std::cout << "trapezoid_edges: ";
  for (int i = 0; i < NUM_LAYERS; i++) {
    std::cout << trapezoid_edges[i] << " ";
  }
  std::cout << std::endl;

  std::cout << "parallelogram_slopes: ";
  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    std::cout << parallelogram_slopes[i] << " ";
  }
  std::cout << std::endl;

  std::cout << "radii_leverArm: ";
  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    std::cout << radii_leverArm[i] << " ";
  }
  std::cout << std::endl;

  return;
}