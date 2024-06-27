#pragma once

#include "config.h"

#include <ap_int.h>

typedef unsigned int index_t;

// point type
#define Z_VALUE_INT_BITS 12
#define Z_VALUE_TOTAL_BITS 32

typedef ap_fixed<Z_VALUE_TOTAL_BITS, Z_VALUE_INT_BITS> z_value_t;

#define RADIUS_VALUE_INT_BITS 12
#define RADIUS_VALUE_TOTAL_BITS 32

typedef ap_fixed<RADIUS_VALUE_TOTAL_BITS, RADIUS_VALUE_INT_BITS> radius_value_t;

#define PHI_VALUE_INT_BITS 12
#define PHI_VALUE_TOTAL_BITS 32

typedef ap_fixed<PHI_VALUE_TOTAL_BITS, PHI_VALUE_INT_BITS> phi_value_t;

#define POINT_BITS_SIZE                                                        \
  Z_VALUE_TOTAL_BITS + RADIUS_VALUE_TOTAL_BITS + PHI_VALUE_TOTAL_BITS

typedef ap_fixed<Z_VALUE_TOTAL_BITS, Z_VALUE_INT_BITS> float_value_t;

typedef ap_int<Z_VALUE_TOTAL_BITS> int_value_t;

typedef ap_uint<POINT_BITS_SIZE> point_t;

point_t point_create(z_value_t z, radius_value_t radius, phi_value_t phi);

z_value_t point_get_z(point_t p);

radius_value_t point_get_radius(point_t p);

phi_value_t point_get_phi(point_t p);

typedef struct {
  point_t points[NUM_LAYERS][MAX_NUM_POINTS];
} PointArr5x16_t;

#define CONST_VALUE_ARGS                                                       \
  float_value_t &top_layer_lim, float_value_t &beam_axis_lim,                  \
      float_value_t &boundaryPoint_offset

#define CONST_ARRAY_ARGS                                                       \
  float_value_t trapezoid_edges[NUM_LAYERS],                                   \
      float_value_t parallelogram_slopes[NUM_LAYERS - 1],                      \
      float_value_t radii[NUM_LAYERS],                                         \
      float_value_t radii_leverArm[NUM_LAYERS - 1]

#define PATCH_BUFFER_ARGS                                                      \
  point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]                          \
                      [NUM_POINTS_IN_SUPERPOINT],                              \
      index_t &latest_patch_index, index_t &num_patches,                       \
      float_value_t pSlope[PATCH_BUFFER_SIZE][NUM_LAYERS],                     \
      float_value_t shadow_bottomL_jR[PATCH_BUFFER_SIZE][NUM_LAYERS],          \
      float_value_t shadow_bottomR_jR[PATCH_BUFFER_SIZE][NUM_LAYERS],          \
      float_value_t shadow_bottomL_jL[PATCH_BUFFER_SIZE][NUM_LAYERS],          \
      float_value_t shadow_bottomR_jL[PATCH_BUFFER_SIZE][NUM_LAYERS],          \
      float_value_t z1_min[PATCH_BUFFER_SIZE][NUM_LAYERS],                     \
      float_value_t z1_max[PATCH_BUFFER_SIZE][NUM_LAYERS],                     \
      float_value_t a_corner[PATCH_BUFFER_SIZE][2],                            \
      float_value_t b_corner[PATCH_BUFFER_SIZE][2],                            \
      float_value_t c_corner[PATCH_BUFFER_SIZE][2],                            \
      float_value_t d_corner[PATCH_BUFFER_SIZE][2],                            \
      bool squareAcceptance[PATCH_BUFFER_SIZE],                                \
      bool flatTop[PATCH_BUFFER_SIZE], bool flatBottom[PATCH_BUFFER_SIZE],     \
      bool triangleAcceptance[PATCH_BUFFER_SIZE],                              \
      hls::stream<point_t> &patch_stream

// constant values
#define TOP_LAYER_LIM 50
#define BEAM_AXIS_LIM 15
#define BOUNDARYPOINT_OFFSET 0

// const array values
constexpr float get_trapezoid_edges(int idx) {
  float trapezoid_edges[NUM_LAYERS] = {22.0001, 29.0001, 36.0001, 43.0001,
                                       50.0001};

  return trapezoid_edges[idx];
}

constexpr float get_parallelogram_slopes(int idx) {
  float parallelogram_slopes[NUM_LAYERS - 1] = {0, -(float)(1.0 / 3.0), -1, -3};

  return parallelogram_slopes[idx];
}

constexpr int get_radii(int idx) {
  int radii[NUM_LAYERS] = {5, 10, 15, 20, 25};

  return radii[idx];
}

constexpr float get_radii_leverArm(int idx) {
  float radii_leverArm[NUM_LAYERS - 1] = {1, 1.0 + 1.0 / 3.0, 2, 4};

  return radii_leverArm[idx];
}
