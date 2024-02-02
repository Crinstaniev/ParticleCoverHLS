#include "point.h"

point_s point_init(int layer_num, double radius, double phi, double z) {
  point_s p;
  p.layer_num = layer_num;
  p.radius = radius;
  p.phi = phi;
  p.z = z;

  return p;
}