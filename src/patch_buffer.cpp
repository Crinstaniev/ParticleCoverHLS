#include "patch_buffer.h"
#include "config.h"
#include "types.h"

#include <cstring>
#include <hls_stream.h>

void patch_buffer_add_patch(
    point_t patch_buffer[PATCH_BUFFER_SIZE][MAX_NUM_PATCHES]
                        [MAX_POINTS_PER_LAYER],
    index_t &latest_patch_index, index_t &num_patches) {
  // add patch to buffer
}

// read and write stream
void write_patch_stream(hls::stream<PointArr5x16_t> &patch_stream,
                        point_t patch_buffer[PATCH_BUFFER_SIZE][MAX_NUM_PATCHES]
                                            [MAX_POINTS_PER_LAYER],
                        index_t &latest_patch_index, index_t &num_patches) {
  // write patch buffer to stream
}

void read_patch_stream(hls::stream<PointArr5x16_t> &patch_stream,
                       point_t patch_buffer[PATCH_BUFFER_SIZE][MAX_NUM_PATCHES]
                                           [MAX_POINTS_PER_LAYER],
                       index_t &latest_patch_index, index_t &num_patches) {
  // read patch stream to buffer
}
