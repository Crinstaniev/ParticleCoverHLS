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
  PointArr_s points;
  double z_values[MAX_NUM_POINTS];
  double min;
  double max;
} superPoints_s;

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

  superPoints_s superpoints;
} wedgePatch_s;

void makePatch_alignedToLine();

typedef struct {
  int num_patches;
  wedgePatch_s patches[MAX_PATCHES_IN_COVER];
  int fitting_lines[MAX_NUM_POINTS]; // TODO: figure out the maximum size of
                                     // this array
  superPoints_s superpoints;
  wedgePatch_s all_patches[MAX_PATCHES_IN_COVER];
  wedgePatch_s wedge_patch[MAX_PATCHES_IN_COVER];
  bool real_patch_list[MAX_NUM_POINTS]; // TODO: figure out the maximum size of
                                        // this array
} wedgeCover_s;

/**
 * Superpoint
 */
superPoints_s superPoint_init(PointArr_s points_arr);

bool superPoint_is_eq(superPoints_s sp_1, superPoints_s sp_2);

/**
 * Wedge patch
 */
wedgePatch_s wedgePatch_init(superPoints_s superpoints, double apexZ0);

/**
 * Wedge cover
 */
wedgeCover_s wedgeCover_init();

void wedgeCover_add_patch(wedgePatch_s curr_patch, wedgeCover_s *wedge_cover);

#endif