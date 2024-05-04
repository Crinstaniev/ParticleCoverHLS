#include "parallelogram.h"
#include <iostream>

void parallelogram_init(parallelogram_s *p, int layer_numI, float z1_minI,
                        float z1_maxI, float shadow_bottomL_jRI,
                        float shadow_bottomR_jRI, float shadow_bottomL_jLI,
                        float shadow_bottomR_jLI, float pSlopeI) {
  p->layer_num = layer_numI;
  p->z1_min = z1_minI;
  p->z1_max = z1_maxI;
  p->shadow_bottomL_jR = shadow_bottomL_jRI;
  p->shadow_bottomR_jR = shadow_bottomR_jRI;
  p->shadow_bottomL_jL = shadow_bottomL_jLI;
  p->shadow_bottomR_jL = shadow_bottomR_jLI;
  p->pSlope = pSlopeI;

  return;
}

std::ostream &operator<<(std::ostream &os, const parallelogram_s &p) {
  os << "parallelogram_s: " << std::endl;
  os << "  layer_num: " << p.layer_num << std::endl;
  os << "  z1_min: " << p.z1_min << std::endl;
  os << "  z1_max: " << p.z1_max << std::endl;
  os << "  shadow_bottomL_jR: " << p.shadow_bottomL_jR << std::endl;
  os << "  shadow_bottomR_jR: " << p.shadow_bottomR_jR << std::endl;
  os << "  shadow_bottomL_jL: " << p.shadow_bottomL_jL << std::endl;
  os << "  shadow_bottomR_jL: " << p.shadow_bottomR_jL << std::endl;
  os << "  pSlope: " << p.pSlope << std::endl;

  return os;
}