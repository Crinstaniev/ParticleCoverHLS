#include "config.h"
#include "file_reader.h"
#include "system.h"
#include "types.h"

#include <iostream>
#include <string>

int main() {
// main function for testing
#if CONFIG_IS_SYNTHESIS == false
  string file_path = "./wedgeData_v3_128.txt";
#else
  string file_path = "../../../data/wedgeData_v3_128.txt";
#endif

  point_t points[NUM_LAYERS][MAX_NUM_POINTS];
  index_t num_points[NUM_LAYERS];
  // array constants
  float_value_t radii[NUM_LAYERS];
  float_value_t trapezoid_edges[NUM_LAYERS];
  float_value_t parallelogram_slopes[NUM_LAYERS - 1];
  float_value_t radii_leverArm[NUM_LAYERS - 1];
  // value constants
  float_value_t top_layer_lim;
  float_value_t beam_axis_lim;
  float_value_t boundaryPoint_offset;

  read_file(file_path, points, num_points, trapezoid_edges,
            parallelogram_slopes, radii, radii_leverArm, top_layer_lim,
            beam_axis_lim, boundaryPoint_offset);

  top_layer_lim = 50.0;

  // stream to hold the generated patches: point_t, size = 5 * 16
  hls::stream<PointArr5x16_t> patch_stream;

  // pass to system_top
  system_top(points, num_points, trapezoid_edges, parallelogram_slopes, radii,
             radii_leverArm, top_layer_lim, beam_axis_lim, boundaryPoint_offset,
             patch_stream);

  return 0;
}