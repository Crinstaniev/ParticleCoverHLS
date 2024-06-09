#include "patch_buffer.h"
#include "config.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>

void patch_buffer_add_patch(
    point_t new_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    index_t &latest_patch_index, index_t &num_patches) {
  // add patch to buffer
  // increment latest_patch_index
  latest_patch_index = (latest_patch_index + 1) % PATCH_BUFFER_SIZE;
  num_patches++;

// copy new patch to buffer
loop_copy_patch_layer:
  for (index_t l = 0; l < NUM_LAYERS; l++) {
#pragma HLS unroll
  loop_copy_patch_point:
    for (index_t p = 0; p < MAX_POINTS_PER_LAYER; p++) {
#pragma HLS unroll
      patch_buffer[latest_patch_index][l][p] = new_patch[l][p];
    }
  }
}

// read and write stream
void write_patch_stream(hls::stream<PointArr5x16_t> &patch_stream,
                        point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                                            [NUM_POINTS_IN_SUPERPOINT],
                        index_t &latest_patch_index, index_t &num_patches) {
  // write patch buffer to stream
}

void read_patch_stream(hls::stream<PointArr5x16_t> &patch_stream,
                       point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                                           [NUM_POINTS_IN_SUPERPOINT],
                       index_t &latest_patch_index, index_t &num_patches) {
  // read patch stream to buffer
}
