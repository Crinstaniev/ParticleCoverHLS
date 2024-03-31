#pragma once

typedef struct {
  int layer_num;
  float pSlope;

  float shadow_bottomL_jR;
  float shadow_bottomR_jR;
  float shadow_bottomL_jL;
  float shadow_bottomR_jL;

  float z1_min;
  float z1_max;
} parallelogram_s;

void parallelogram_init(parallelogram_s *p, int layer_numI, float z1_minI,
                        float z1_maxI, float shadow_bottomL_jRI,
                        float shadow_bottomR_jRI, float shadow_bottomL_jLI,
                        float shadow_bottomR_jLI, float pSlopeI);