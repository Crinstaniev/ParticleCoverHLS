#include "patch_buffer.h"
#include "config.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>
#include <iostream>

/**
 * @brief add a new patch to the patch buffer
 * 
 * Add a new patch to the patch buffer.
 * The new patch will be marked as `valid`.
 * The index of the patch will be written into the patch index queue.
 */
void patch_buffer_add_patch(
   point_t new_patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT],
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
                        bool patch_buffer_valid[PATCH_BUFFER_SIZE],
                        index_t patch_buffer_order[PATCH_BUFFER_SIZE],
                         index_t &latest_patch_index,
    index_t &num_patches) {
  return;
}

/**
 * @brief delete a patch from the patch buffer
 * 
 * Delete a patch from the patch buffer.
 * The patch will be marked as `invalid`.
 * The index of the patch will be removed from the patch index queue.
 * The patch index queue will be sorted based on the change.
 * A patch makred as `invalid` will not be outputed to
 * the patch stream when overriden, and vice versa.
 */
void patch_buffer_delete_patch(
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
                        bool patch_buffer_valid[PATCH_BUFFER_SIZE],
                        index_t patch_buffer_order[PATCH_BUFFER_SIZE],
                         index_t &latest_patch_index,
    index_t &num_patches, index_t patch_depth) {
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
