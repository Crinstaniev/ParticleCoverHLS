#pragma once

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

typedef ap_uint<POINT_BITS_SIZE> point_t;

point_t point_create(z_value_t z, radius_value_t radius, phi_value_t phi);

z_value_t point_get_z(point_t p);

radius_value_t point_get_radius(point_t p);

phi_value_t point_get_phi(point_t p);
