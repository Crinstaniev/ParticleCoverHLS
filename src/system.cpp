#include "system.h"
#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <hls_stream.h>

#include <iostream>

using namespace std;

void _shadowquilt_main_loop(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                            index_t num_points[NUM_LAYERS], z_value_t &apexZ0,
                            CONST_ARRAY_ARGS, CONST_VALUE_ARGS,
                            PATCH_BUFFER_ARGS) {
  // variable declarations
  z_value_t z_top_min = -1 * top_layer_lim;
  float_value_t complementary_apexZ0 = 0x0;
  float_value_t c_corner = 1ULL << 11 - 1;
  int_value_t first_row_count = 0x0;
  float_value_t z_top_max = top_layer_lim + boundaryPoint_offset;

  DEBUG_PRINT_ALL(cout << "apexZ0: " << apexZ0 << endl;
                  cout << "z_top_min: " << z_top_min << endl;
                  cout << "complementary_apexZ0: " << complementary_apexZ0
                       << endl;
                  cout << "first_row_count: " << first_row_count << endl;
                  cout << "c_corner: " << c_corner << endl;
                  cout << "z_top_max: " << z_top_max << endl;
                  cout << "top_layer_lim: " << top_layer_lim << endl;)
}

void makePatches_ShadowQuilt_fromEdges(
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    CONST_ARRAY_ARGS, CONST_VALUE_ARGS, PATCH_BUFFER_ARGS) {
  // variable declarations
  bool fix42 = true;
  z_value_t apexZ0 = trapezoid_edges[0];
  float_value_t saved_apexZ0;
  float_value_t original_apexZ0 = apexZ0;

  int_value_t first_row_count = 0;

makepatch_main_loop:
  while (apexZ0 > -1 * trapezoid_edges[0]) {
#pragma HLS PIPELINE II = 1
    _shadowquilt_main_loop(points, num_points, apexZ0, radii, trapezoid_edges,
                           parallelogram_slopes, radii_leverArm, top_layer_lim,
                           beam_axis_lim, boundaryPoint_offset, patch_buffer,
                           latest_patch_index, num_patches, patch_stream);

    return;
  }
}

void system_top(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                index_t num_points[NUM_LAYERS], CONST_ARRAY_ARGS,
                CONST_VALUE_ARGS, hls::stream<PointArr5x16_t> &patch_stream) {
  // tmp fix: trapezoid_edges adjustment
  trapezoid_edges[0] -= 10;
  trapezoid_edges[1] -= 10;
  trapezoid_edges[2] -= 30;
  trapezoid_edges[3] -= 40;
  trapezoid_edges[4] -= 50;

  // variable declarations

  // patch buffer: circular buffer, three patches
  // patch: 5 superpoints
  // superpoints: 16 consecutive points
  point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT];
  index_t latest_patch_index = 0;
  index_t num_patches = 0;

  makePatches_ShadowQuilt_fromEdges(
      points, num_points, trapezoid_edges, parallelogram_slopes, radii,
      radii_leverArm, top_layer_lim, beam_axis_lim, boundaryPoint_offset,
      patch_buffer, latest_patch_index, num_patches, patch_stream);

  return;
}

#if CONFIG_IS_SYNTHESIS == false
int main() {
  cout << "Hello, world!" << endl;

  return 0;
}
#endif