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

static double radii[NUM_LAYERS] = {5.0, 10.0, 15.0, 20.0, 25.0};
static double trapezoid_edges[NUM_LAYERS] = {0};
static double parallelogram_slopes[NUM_LAYERS - 1] = {0};
static double radii_leverArm[NUM_LAYERS - 1] = {0};

void radii_initializer(double *radii);
void trapezoid_edges_initializer(double *trapezoid_edges);
void parallelogram_slopes_initializer(double *parallelogram_slopes);
void radii_leverArm_initializer(double *radii_leverArm);

void const_array_initializer(double *radii, double *trapezoid_edges,
                             double *parallelogram_slopes,
                             double *radii_leverArm);

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
