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

const float RADII[] = {5.0, 10.0, 15.0, 20.0, 25.0}; // remove

#define CLAIM_CONST_ARRAYS                                                     \
  float radii[NUM_LAYERS] = {0};                                              \
  float trapezoid_edges[NUM_LAYERS] = {0};                                    \
  float parallelogram_slopes[NUM_LAYERS - 1] = {0};                           \
  float radii_leverArm[NUM_LAYERS - 1] = {0};

#define LINK_CONST_ARRAYS                                                      \
  extern float radii[NUM_LAYERS];                                             \
  extern float trapezoid_edges[NUM_LAYERS];                                   \
  extern float parallelogram_slopes[NUM_LAYERS - 1];                          \
  extern float radii_leverArm[NUM_LAYERS - 1];

void radii_initializer(float radii[NUM_LAYERS]);
void trapezoid_edges_initializer(float *trapezoid_edges, float *radii);
void parallelogram_slopes_initializer(float *parallelogram_slopes,
                                      float *radii);
void radii_leverArm_initializer(float *radii_leverArm,
                                float *parallelogram_slopes);

void const_array_initializer(float *radii, float *trapezoid_edges,
                             float *parallelogram_slopes,
                             float *radii_leverArm);

void print_const_arrays(float *radii, float *trapezoid_edges,
                        float *parallelogram_slopes, float *radii_leverArm);

// FILE READER CONSTANTS
#define MAX_NUM_EVENTS 8192

// DEBUG CONSTANTS
// green color for debug output
#define GREEN "\033[32m"
