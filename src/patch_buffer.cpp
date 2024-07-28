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
    index_t patch_buffer_order[PATCH_BUFFER_SIZE], index_t &latest_patch_index,
    index_t &num_patches, hls::stream<point_t> &patch_stream) {
  /**
   * Calculate the index of the next patch
   * to be added and overrided.
   * check `patch_buffer_valid` from index 0 to `PATCH_BUFFER_SIZE - 1`
   * to find the first invalid patch. If there is no invalid patch,
   * the next patch to be added will be the latest patch index.
   */
  index_t next_patch_index = 0;
  bool no_invalid_patch = true;

PBAP_loop_check_invalid_patch_index:
  for (index_t i = 0; i < PATCH_BUFFER_SIZE; i++) {
    if (!patch_buffer_valid[i]) {
      next_patch_index = i;
      no_invalid_patch = false;
      break;
    }
  }

  /**
   * If there's no invalid patch, the oldest patch will be overrided.
   * The latest patch can be found by checking patch_buffer_order[0].
   */
  if (no_invalid_patch) {
    next_patch_index = patch_buffer_order[0];

    // output the overridden patch to the patch stream
    write_patch_stream(patch_stream, patch_buffer[next_patch_index]);
  }

  /**
   * Update the patch_buffer_order queue.
   * arr[0] <- arr[1]
   * arr[1] <- arr[2]
   * arr[2] <- (-1)
   */
PBAP_loop_update_patch_buffer_order:
  for (index_t i = 0; i < PATCH_BUFFER_SIZE - 1; i++) {
    patch_buffer_order[i] = patch_buffer_order[i + 1];
  }

  /**
   * Add the new patch to the buffer and mark it as valid
   */
  patch_buffer_valid[next_patch_index] = true;
  patch_buffer_order[PATCH_BUFFER_SIZE - 1] = next_patch_index;

// copy the new patch to the buffer
PBAP_loop_copy_new_patch:
  for (index_t layer = 0; layer < NUM_LAYERS; layer++) {
#pragma HLS UNROLL
  PBAP_loop_copy_new_patch_superpoint:
    for (index_t point = 0; point < NUM_POINTS_IN_SUPERPOINT; point++) {
#pragma HLS UNROLL
      patch_buffer[next_patch_index][layer][point] = new_patch[layer][point];
    }
  }

  /**
   * TODO:
   * calculate the patch index based on the patch depth and push it to the patch
   * index queue
   */

  return;
}

/**
 * @brief delete a patch from the patch buffer
 *
 * Delete a patch from the patch buffer.
 * Mark the patch as invalid in `patch_buffer_valid` and
 * update the order of patch indexes in `patch_buffer_order`
 */
void patch_buffer_delete_patch(
    point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                        [NUM_POINTS_IN_SUPERPOINT],
    bool patch_buffer_valid[PATCH_BUFFER_SIZE],
    index_t patch_buffer_order[PATCH_BUFFER_SIZE], index_t &latest_patch_index,
    index_t &num_patches, index_t patch_depth) {
  /**
   * Mark the patch as invalid in `patch_buffer_valid`
   */
  // calculate the patch index to be deleted with the patch depth
  index_t delete_patch_index =
      patch_buffer_order[PATCH_BUFFER_SIZE - patch_depth - 1];
  patch_buffer_valid[delete_patch_index] = false;

  /**
   * Update the patch_buffer_order queue.
   * copy the patch indexes from the deleted patch to the latest patch
   */
PBDP_loop_update_patch_buffer_order:
  for (index_t i = PATCH_BUFFER_SIZE - patch_depth - 1;
       i < PATCH_BUFFER_SIZE - 1; i++) {
    patch_buffer_order[i] = patch_buffer_order[i + 1];
  }

  return;
}

// read and write stream
void write_patch_stream(hls::stream<point_t> &patch_stream,
                        point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]) {
// write patch buffer to stream
WPS_loop_write_patch_stream_layer:
  for (index_t layer = 0; layer < NUM_LAYERS; layer++) {
  WPS_loop_write_patch_stream_superpoint:
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
