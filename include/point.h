#ifndef __POINT_H__
#define __POINT_H__

typedef struct {
  int layer_num;
  double radius;
  double phi;
  double z;
} point_s;

point_s point_init(int layer_num, double radius, double phi, double z);

#endif