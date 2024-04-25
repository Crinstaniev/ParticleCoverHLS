#ifndef __POINT_H__
#define __POINT_H__

#include <iostream>

typedef struct {
  int layer_num;
  float radius;
  float phi;
  float z;
} point_s;

point_s point_init(int layer_num, float radius, float phi, float z);

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const point_s &p);

#endif