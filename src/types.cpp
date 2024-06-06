#include "types.h"
#include "config.h"

#include <iostream>

using namespace std;

point_t point_create(z_value_t z, radius_value_t radius, phi_value_t phi) {
  // Combine all three into one point_t
  point_t p = 0x0;

  p.range(Z_VALUE_TOTAL_BITS - 1, 0) = z.range(Z_VALUE_TOTAL_BITS - 1, 0);
  p.range(Z_VALUE_TOTAL_BITS + RADIUS_VALUE_TOTAL_BITS - 1,
          Z_VALUE_TOTAL_BITS) = radius.range(RADIUS_VALUE_TOTAL_BITS - 1, 0);
  p.range(POINT_BITS_SIZE - 1, Z_VALUE_TOTAL_BITS + RADIUS_VALUE_TOTAL_BITS) =
      phi.range(PHI_VALUE_TOTAL_BITS - 1, 0);

  // // retrieve and compare with original values
  // z_value_t z2 = point_get_z(p);
  // radius_value_t radius2 = point_get_radius(p);
  // phi_value_t phi2 = point_get_phi(p);

  return p;
}

z_value_t point_get_z(point_t p) {
  ap_uint<Z_VALUE_TOTAL_BITS> z_bits = p.range(Z_VALUE_TOTAL_BITS - 1, 0);
  z_value_t z;
  z.range(Z_VALUE_TOTAL_BITS - 1, 0) = z_bits.range(Z_VALUE_TOTAL_BITS - 1, 0);

  return z;
}

radius_value_t point_get_radius(point_t p) {
  ap_uint<RADIUS_VALUE_TOTAL_BITS> radius_bits = p.range(
      Z_VALUE_TOTAL_BITS + RADIUS_VALUE_TOTAL_BITS - 1, Z_VALUE_TOTAL_BITS);
  radius_value_t radius;
  radius.range(RADIUS_VALUE_TOTAL_BITS - 1, 0) =
      radius_bits.range(RADIUS_VALUE_TOTAL_BITS - 1, 0);

  return radius;
}

phi_value_t point_get_phi(point_t p) {
  ap_uint<PHI_VALUE_TOTAL_BITS> phi_bits = p.range(
      POINT_BITS_SIZE - 1, Z_VALUE_TOTAL_BITS + RADIUS_VALUE_TOTAL_BITS);
  phi_value_t phi;
  phi.range(PHI_VALUE_TOTAL_BITS - 1, 0) =
      phi_bits.range(PHI_VALUE_TOTAL_BITS - 1, 0);

  return phi;
}
