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
loop_copy_patch_buffer_layer:
  for (index_t layer = 0; layer < NUM_LAYERS; layer++) {
#pragma HLS UNROLL
  loop_copy_patch_buffer_superpoint:
    for (index_t point = 0; point < NUM_POINTS_IN_SUPERPOINT; point++) {
#pragma HLS UNROLL
      patch_buffer[latest_patch_index][layer][point] = new_patch[layer][point];
    }
  }

  return;
}

// read and write stream
void write_patch_stream(hls::stream<point_t> &patch_stream,
                        point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]) {
// write patch buffer to stream
loop_write_patch_stream_layer:
  for (index_t layer = 0; layer < NUM_LAYERS; layer++) {
  loop_write_patch_stream_superpoint:
    for (index_t point = 0; point < NUM_POINTS_IN_SUPERPOINT; point++) {
      patch_stream.write(patch[layer][point]);
    }
  }
}

void read_patch_stream(hls::stream<point_t> &patch_stream,
                       point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]) {
  // read patch stream to buffer
loop_read_patch_stream_layer:
  for (index_t layer = 0; layer < NUM_LAYERS; layer++) {
  loop_read_patch_stream_superpoint:
    for (index_t point = 0; point < NUM_POINTS_IN_SUPERPOINT; point++) {
      patch[layer][point] = patch_stream.read();
    }
  }
}
