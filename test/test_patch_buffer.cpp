#include "config.h"
#include "file_reader.h"
#include "patch_buffer.h"
#include "system.h"
#include "types.h"

#include <algorithm>
#include <iostream>
#include <string>

using namespace std;

void print_patch(point_t patch[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT]) {
  cout << "Printing patch:" << endl;
  for (int i = 0; i < NUM_LAYERS; i++) {
    for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
      cout << patch[i][j] << " ";
    }
    cout << endl;
  }
}

int main(void) {
  // create some patches
  point_t patch_0[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT] = {{0x0}};
  point_t patch_1[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT] = {{0x0}};
  point_t patch_2[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT] = {{0x0}};
  point_t patch_3[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT] = {{0x0}};
  point_t patch_4[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT] = {{0x0}};
  point_t patch_5[NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT] = {{0x0}};

  // fill the patches with some data
  for (int i = 0; i < NUM_LAYERS; i++) {
    for (int j = 0; j < NUM_POINTS_IN_SUPERPOINT; j++) {
      patch_0[i][j] = 1;
      patch_1[i][j] = 1 + 1;
      patch_2[i][j] = 1 + 2;
      patch_3[i][j] = 1 + 3;
      patch_4[i][j] = 1 + 4;
      patch_5[i][j] = 1 + 5;
    }
  }

  point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS]
                      [NUM_POINTS_IN_SUPERPOINT] = {0x0};
  bool patch_buffer_valid[PATCH_BUFFER_SIZE] = {false};
  index_t patch_buffer_order[PATCH_BUFFER_SIZE] = {-1, -1, -1};

  index_t latest_patch_index = 0x0;
  index_t num_patches = 0x0;

  // init patch buffer to 0
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    for (int j = 0; j < NUM_LAYERS; j++) {
      for (int k = 0; k < NUM_POINTS_IN_SUPERPOINT; k++) {
        patch_buffer[i][j][k] = 0;
      }
    }
  }

  hls::stream<point_t> patch_stream;

  // print all patches in patch buffer
  cout << "Before adding patches:" << endl;
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << "Patch " << i << ":" << endl;
    print_patch(patch_buffer[i]);
  }
  cout << endl;

  // print patch_buffer_valid
  cout << "patch_buffer_valid:" << endl;
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << patch_buffer_valid[i] << " ";
  }
  cout << endl;

  // print patch_buffer_order
  cout << "patch_buffer_order:" << endl;
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << patch_buffer_order[i] << " ";
  }
  cout << endl;

  // add patches to patch buffer
  patch_buffer_add_patch(patch_0, patch_buffer, patch_buffer_valid,
                         patch_buffer_order, latest_patch_index, num_patches,
                         patch_stream);
  patch_buffer_add_patch(patch_1, patch_buffer, patch_buffer_valid,
                         patch_buffer_order, latest_patch_index, num_patches,
                         patch_stream);

  // print patch_buffer
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << "Patch " << i << ":" << endl;
    print_patch(patch_buffer[i]);
  }

  // delete patch depth 1
  patch_buffer_delete_patch(patch_buffer, patch_buffer_valid,
                            patch_buffer_order, latest_patch_index, num_patches,
                            1);

  // add patches to patch buffer
  patch_buffer_add_patch(patch_2, patch_buffer, patch_buffer_valid,
                         patch_buffer_order, latest_patch_index, num_patches,
                         patch_stream);

  // print patch_buffer
  cout << "======================" << endl;
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << "Patch " << i << ":" << endl;
    print_patch(patch_buffer[i]);
  }

  // print patch_buffer_valid
  cout << "patch_buffer_valid:" << endl;
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << patch_buffer_valid[i] << " ";
  }
  cout << endl;

  // print patch_buffer_order
  cout << "patch_buffer_order:" << endl;
  for (int i = 0; i < PATCH_BUFFER_SIZE; i++) {
    cout << patch_buffer_order[i] << " ";
  }
  cout << endl;

  return EXIT_SUCCESS;
}
