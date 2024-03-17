#include "cover.h"
#include "patch.h"
#include "system.h"

#include <climits>

/**
 * Prepare data for synthesis components.
 */
void cover_init(cover_s *cover, dataset_s data) {
  patch_buffer_init(&cover->patch_buffer);
  cover->n_patches = 0;

  return;
}