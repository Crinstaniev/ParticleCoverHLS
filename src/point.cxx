#include "point.h"
#include <iostream>

point_s point_init(int layer_num, double radius, double phi, double z) {
  point_s p;
  p.layer_num = layer_num;
  p.radius = radius;
  p.phi = phi;
  p.z = z;

  return p;
}

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const point_s &p) {
  os << "Layer: " << p.layer_num << " Radius: " << p.radius << " Phi: " << p.phi
     << " Z: " << p.z;
  return os;
}