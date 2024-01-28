#ifndef __TYPES_H__
#define __TYPES_H__

#include "constants.h"

typedef struct {
  int layer;
  int radius;
  double angle;
  double z;
} Point_s;

typedef struct {
  unsigned int num_points;
  Point_s points[MAX_NUM_POINTS];
} PointArr_s;

typedef struct {
  int end_layer;
  int left_end_layer;
  int right_end_layer;
  int left_end_lambdaZ;
  int right_end_lambdaZ;
  double apexZ0;

  int shadow_fromTopToInnermost_topL_jL;
  int shadow_fromTopToInnermost_topL_jR;
  int shadow_fromTopToInnermost_topR_jL;
  int shadow_fromTopToInnermost_topR_jR;
} wedgePatch_s;

void makePatch_alignedToLine();

typedef struct {
  int num_patches;
  wedgePatch_s patches[MAX_PATCHES_IN_COVER];
} wedgeCover_s;

void wedgeCover_add_patch();

#endif