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

const double RADII[] = {5.0, 10.0, 15.0, 20.0, 25.0}; // remove

#define CLAIM_CONST_ARRAYS                                                     \
  double radii[NUM_LAYERS] = {0};                                              \
  double trapezoid_edges[NUM_LAYERS] = {0};                                    \
  double parallelogram_slopes[NUM_LAYERS - 1] = {0};                           \
  double radii_leverArm[NUM_LAYERS - 1] = {0};

#define LINK_CONST_ARRAYS                                                      \
  extern double radii[NUM_LAYERS];                                             \
  extern double trapezoid_edges[NUM_LAYERS];                                   \
  extern double parallelogram_slopes[NUM_LAYERS - 1];                          \
  extern double radii_leverArm[NUM_LAYERS - 1];

void radii_initializer(double radii[NUM_LAYERS]);
void trapezoid_edges_initializer(double *trapezoid_edges, double *radii);
void parallelogram_slopes_initializer(double *parallelogram_slopes,
                                      double *radii);
void radii_leverArm_initializer(double *radii_leverArm,
                                double *parallelogram_slopes);

void const_array_initializer(double *radii, double *trapezoid_edges,
                             double *parallelogram_slopes,
                             double *radii_leverArm);

void print_const_arrays(double *radii, double *trapezoid_edges,
                        double *parallelogram_slopes, double *radii_leverArm);

// FILE READER CONSTANTS
#define MAX_NUM_EVENTS 8192

// DEBUG CONSTANTS
// green color for debug output
#define GREEN "\033[32m"
