#include "system.h"
#include "config.h"
#include "patch_buffer.h"
#include "types.h"

#include <hls_stream.h>

#include <iostream>

using namespace std;

void makePatch_alignedToLine(z_value_t &apexZ0, z_value_t z_top_max,
                             bool leftRight, PATCH_BUFFER_ARGS) {
  // variable declarations

  return;
}

void _shadowquilt_column_loop_get_cond(float_value_t &c_corner,
                                       float_value_t &projectionOfCornerToBeam,
                                       bool &cond) {
  bool cond_and_0 = (float)c_corner > -1 * get_trapezoid_edges(NUM_LAYERS - 1);
  bool cond_and_1 = projectionOfCornerToBeam < BEAM_AXIS_LIM;
  cond = cond_and_0 && cond_and_1;
}

void _shadowquilt_main_loop(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                            index_t num_points[NUM_LAYERS], z_value_t &apexZ0,
                            PATCH_BUFFER_ARGS) {
  // variable declarations
  z_value_t z_top_min = -1 * TOP_LAYER_LIM;
  float_value_t complementary_apexZ0 = 0x0;
  float_value_t c_corner = 1ULL << 11 - 1;
  int_value_t first_row_count = 0;
  float_value_t z_top_max = TOP_LAYER_LIM + BOUNDARYPOINT_OFFSET;
  int_value_t nPatchesInColumn = 0;
  float_value_t projectionOfCornerToBeam = 0;
  bool cond_shadowquilt_column_loop = false;

  DEBUG_PRINT_ALL(cout << "apexZ0: " << apexZ0 << endl;
                  cout << "z_top_min: " << z_top_min << endl;
                  cout << "complementary_apexZ0: " << complementary_apexZ0
                       << endl;
                  cout << "first_row_count: " << first_row_count << endl;
                  cout << "c_corner: " << c_corner << endl;
                  cout << "z_top_max: " << z_top_max << endl;
                  cout << "top_layer_lim: " << top_layer_lim << endl;)

  if (num_patches > 0) {
    // not implemented
  }

  // calculate initial loop condition
  _shadowquilt_column_loop_get_cond(c_corner, projectionOfCornerToBeam,
                                    cond_shadowquilt_column_loop);
_shadowquilt_column_loop:
  while (cond_shadowquilt_column_loop) {
    nPatchesInColumn++;

    makePatch_alignedToLine(apexZ0, z_top_max, false, patch_buffer,
                            latest_patch_index, num_patches, patch_stream);

    return;

    // get condition for next iteration
    _shadowquilt_column_loop_get_cond(c_corner, projectionOfCornerToBeam,
                                      cond_shadowquilt_column_loop);
  }
}

void makePatches_ShadowQuilt_fromEdges(
    point_t points[NUM_LAYERS][MAX_NUM_POINTS], index_t num_points[NUM_LAYERS],
    PATCH_BUFFER_ARGS) {
  // variable declarations
  bool fix42 = true;
  z_value_t apexZ0 = get_trapezoid_edges(0);
  float_value_t saved_apexZ0;
  float_value_t original_apexZ0 = apexZ0;

  int_value_t first_row_count = 0;

makepatch_main_loop:
  while ((float)apexZ0 > -1 * get_trapezoid_edges(0)) {
#pragma HLS PIPELINE II = 1
    _shadowquilt_main_loop(points, num_points, apexZ0, patch_buffer,
                           latest_patch_index, num_patches, patch_stream);

    return;
  }
}

void system_top(point_t points[NUM_LAYERS][MAX_NUM_POINTS],
                index_t num_points[NUM_LAYERS],
                hls::stream<PointArr5x16_t> &patch_stream) {
  // variable declarations

  // patch buffer: circular buffer, three patches
  // patch: 5 superpoints
  // superpoints: 16 consecutive points
  point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT];
  index_t latest_patch_index = 0;
  index_t num_patches = 0;

  makePatches_ShadowQuilt_fromEdges(points, num_points, patch_buffer,
                                    latest_patch_index, num_patches,
                                    patch_stream);

  return;
}

#if CONFIG_IS_SYNTHESIS == false
int main() {
  cout << "Hello, world!" << endl;

  return 0;
}
#endif