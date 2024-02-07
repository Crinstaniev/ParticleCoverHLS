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
  os << "Point: " << std::endl;
  os << "  layer_num: " << p.layer_num << std::endl;
  os << "  radius: " << p.radius << std::endl;
  os << "  phi: " << p.phi << std::endl;
  os << "  z: " << p.z << std::endl;

  return os;
}