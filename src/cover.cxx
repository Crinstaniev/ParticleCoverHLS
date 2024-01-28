#include "types.h"

wedgeCover_s wedgeCover_init() {
  wedgeCover_s new_cover = {.num_patches = 0};

  return new_cover;
}

void wedgeCover_add_patch(wedgePatch_s curr_patch, wedgeCover_s *wedge_cover) {
  if (wedge_cover->num_patches == 0) {
    wedge_cover->patches[0] = curr_patch;
    wedge_cover->all_patches[0] = curr_patch;
    wedge_cover->real_patch_list[0] = true;

    wedge_cover->num_patches++;
  } else {
    // TODO: implement
  }

  return;
}
