#include "constants.h"
#include "patch_buffer.h"
#include "superpoint.h"
#include "system.h"
#include "patch_buffer.h"
#include "dataset.h"
#include <iostream>
#include <string>

#define NUM_SUPERPOINTS 5
#define NUM_PATCHES 5

int main() {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path, 128);
  point_s *points = events[0].list_of_points;

  environment_s env = events[0].env;

  dataset_s ds = dataset_init(env);

  dataset_import_data(ds, points, events[0].num_points);
  dataset_add_boundary_point(ds, 0.0001);

  // make some dummy patches
  patch_s patches[NUM_PATCHES];

  for (size_t i = 0; i < NUM_PATCHES; i++) {
    patches[i].apexZ0 = i;
  }

  // print apexZ0 of the patch
  for (size_t i = 0; i < NUM_PATCHES; i++) {
    std::cout << "apexZ0 of the patch made: " << patches[i].apexZ0 << std::endl;
  }

  // push the patches to the buffer
  patch_buffer_s patch_buffer;
  patch_buffer_init(&patch_buffer);

  // push a single patch
  patch_buffer_push_patch(&patch_buffer, patches[0]);

  patch_s *patch = new patch_s;
  patch_buffer_access_patch(&patch_buffer, 0, patch);

  std::cout << "apexZ0 of the patch: " << patch->apexZ0 << std::endl;

  patch_buffer_push_patch(&patch_buffer, patches[1]);

  patch_s *patch2 = new patch_s;
  patch_buffer_access_patch(&patch_buffer, 0, patch2);

  std::cout << "apexZ0 of the patch: " << patch2->apexZ0 << std::endl;

  // push two more patches
  patch_buffer_push_patch(&patch_buffer, patches[2]);
  patch_buffer_push_patch(&patch_buffer, patches[3]);

  patch_s *patch3 = new patch_s;
  patch_buffer_access_patch(&patch_buffer, 0, patch3);

  // access all 3 patches then print apexZ0 of the patch
  for (size_t i = 0; i < 3; i++) {
    patch_s *patch = new patch_s;
    patch_buffer_access_patch(&patch_buffer, i, patch);
    std::cout << "apexZ0 of the patch: " << patch->apexZ0 << std::endl;
  }

  // push another patch
  patch_buffer_push_patch(&patch_buffer, patches[4]);

  // access all 3 patches then print apexZ0 of the patch
  for (size_t i = 0; i < 3; i++) {
    patch_s *patch = new patch_s;
    patch_buffer_access_patch(&patch_buffer, i, patch);
    std::cout << "apexZ0 of the patch: " << patch->apexZ0 << std::endl;
  }

  return 0;
}