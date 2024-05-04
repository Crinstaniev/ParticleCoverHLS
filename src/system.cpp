#include "system.h"
#include "config.h"
#include "types.h"
#include <iostream>

using namespace std;

void _shadowquilt_main_loop(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                            index_t num_points[NUM_LAYERS], CONST_ARRAY_ARGS,
                            CONST_VALUE_ARGS) {}

void makePatches_ShadowQuilt_fromEdges(
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    CONST_ARRAY_ARGS, CONST_VALUE_ARGS) {
  // variable declarations
  bool fix42 = true;
  z_value_t apexZ0 = trapezoid_edges[0];
  float_value_t saved_apexZ0;
  float_value_t original_apexZ0 = apexZ0;

makepatch_main_loop:
  while (apexZ0 > -1 * original_apexZ0) {
#pragma HLS PIPELINE II = 1
    _shadowquilt_main_loop(points, num_points, radii, trapezoid_edges,
                           parallelogram_slopes, radii_leverArm, top_layer_lim,
                           beam_axis_lim, boundaryPoint_offset);
    return;
  }
}

void system_top(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                index_t num_points[NUM_LAYERS], CONST_ARRAY_ARGS,
                CONST_VALUE_ARGS) {
  makePatches_ShadowQuilt_fromEdges(
      points, num_points, radii, trapezoid_edges, parallelogram_slopes,
      radii_leverArm, top_layer_lim, beam_axis_lim, boundaryPoint_offset);
  return;
}

#if CONFIG_IS_SYNTHESIS == false
int main() {
  cout << "Hello, world!" << endl;

  return 0;
}
#endif