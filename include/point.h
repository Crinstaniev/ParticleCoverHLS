#ifndef __POINT_H__
#define __POINT_H__

#include <iostream>

typedef struct {
  int layer_num;
  double radius;
  double phi;
  double z;
} point_s;

point_s point_init(int layer_num, double radius, double phi, double z);

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const point_s &p);

#endif