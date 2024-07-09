#include "patch_buffer.h"
#include "config.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>
#include <iostream>

void patch_buffer_add_patch(
    point_t new_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    bool patch_buffer_is_empty[PATCH_BUFFER_SIZE], index_t &latest_patch_index,
    index_t &num_patches) {

  // add patch to buffer
  // increment latest_patch_index
  latest_patch_index = (latest_patch_index + 1) % PATCH_BUFFER_SIZE;

  DEBUG_PRINT_ALL(/**
                   * DEBUG: if overriding older patch, print message
                   */
                  if (!patch_buffer_is_empty[latest_patch_index]) {
                    std::cout << "Overriding patch " << latest_patch_index
                              << std::endl;
                  })

  patch_buffer_is_empty[latest_patch_index] = false;
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

void patch_buffer_delete_patch(
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    bool patch_buffer_is_empty[PATCH_BUFFER_SIZE], index_t &latest_patch_index,
    index_t &num_patches, index_t patch_depth) {
  // decrement num_patches
  num_patches--;

  /**
   * Calculate index according to patch_depth.
   * 0 means the latest patch, 1 means the second latest patch, and so on.
   */
  index_t index = (latest_patch_index - patch_depth) % PATCH_BUFFER_SIZE;

  if (index < 0) {
    index += PATCH_BUFFER_SIZE;
  }

  // set patch_buffer_is_empty to true
  patch_buffer_is_empty[index] = true;

  // if latest patch is deleted, update latest_patch_index
  if (index == latest_patch_index) {
    latest_patch_index = (latest_patch_index - 1) % PATCH_BUFFER_SIZE;
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
