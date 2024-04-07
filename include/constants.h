#pragma once

#define MAX_NUM_POINTS 512
#define MAX_NUM_PATCHES 32
#define MAX_NUM_POINTS_IN_SUPERPOINT 16
#define MAX_POINTS_PER_LAYER 256
#define MAX_PARALLELOGRAMS_PER_PATCH 32

// ENVIRONMENT CONSTANTS
// #define TOP_LAYER_LIM 50.0
#define TOP_LAYER_LIM 50.0
#define BEAM_AXIS_LIM 15.0
#define NUM_LAYERS 5
#define RADII_INITIALIZER                                                      \
  { 5.0, 10.0, 15.0, 20.0, 25.0 }
#define TRAPEZOID_EDGES_INITIALIZER                                            \
  { 22, 29, 36, 43, 50 }

// TODO: FIGURE OUT THE CORRECT SIZE
#define COVEER_CONER_LIST_SIZE 4

const double RADII[] = {5.0, 10.0, 15.0, 20.0, 25.0};

static double radii[NUM_LAYERS] = {0};
static double trapezoid_edges[NUM_LAYERS] = {0};
static double parallelogram_slopes[NUM_LAYERS - 1] = {0};
static double radii_leverArm[NUM_LAYERS - 1] = {0};

constexpr void radii_initializer(double radii[NUM_LAYERS]) {
  for (int i = 0; i < NUM_LAYERS; i++) {
    radii[i] = (i + 1) * 5.0;
  }

  return;
}

constexpr void trapezoid_edges_initializer(double trapezoid_edges[NUM_LAYERS]) {
  for (int i = 0; i < NUM_LAYERS; i++) {
    double currentVal =
        radii[i] * (TOP_LAYER_LIM - BEAM_AXIS_LIM) / radii[NUM_LAYERS - 1] +
        BEAM_AXIS_LIM;
    trapezoid_edges[i] = currentVal;
  }

  return;
}

constexpr void
parallelogram_slopes_initializer(double parallelogram_slopes[NUM_LAYERS - 1]) {
  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    parallelogram_slopes[i] =
        (radii[0] - radii[i]) / (radii[NUM_LAYERS - 1] - radii[i]);
  }

  return;
}

constexpr void
radii_leverArm_initializer(double radii_leverArm[NUM_LAYERS - 1]) {
  for (int i = 0; i < NUM_LAYERS - 1; i++) {
    radii_leverArm[i] = (1 - parallelogram_slopes[i]);
  }

  return;
}

#define CONST_ARRAY_INITIALIZER                                                \
  {                                                                            \
    radii_initializer(radii);                                                  \
    parallelogram_slopes_initializer(parallelogram_slopes);                    \
    radii_leverArm_initializer(radii_leverArm);                                \
    trapezoid_edges_initializer(trapezoid_edges);                              \
  }

#define PRINT_CONST_ARRAYS                                                     \
  {                                                                            \
    for (int i = 0; i < NUM_LAYERS; i++) {                                     \
      std::cout << "radii[" << i << "] = " << radii[i] << std::endl;           \
    }                                                                          \
    for (int i = 0; i < NUM_LAYERS; i++) {                                     \
      std::cout << "trapezoid_edges[" << i << "] = " << trapezoid_edges[i]     \
                << std::endl;                                                  \
    }                                                                          \
    for (int i = 0; i < NUM_LAYERS - 1; i++) {                                 \
      std::cout << "parallelogram_slopes[" << i                                \
                << "] = " << parallelogram_slopes[i] << std::endl;             \
    }                                                                          \
    for (int i = 0; i < NUM_LAYERS - 1; i++) {                                 \
      std::cout << "radii_leverArm[" << i << "] = " << radii_leverArm[i]       \
                << std::endl;                                                  \
    }                                                                          \
  }

// FILE READER CONSTANTS
#define MAX_NUM_EVENTS 8192

// DEBUG CONSTANTS
// green color for debug output
#define GREEN "\033[32m"
