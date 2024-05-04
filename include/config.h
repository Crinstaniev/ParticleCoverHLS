#pragma once

// array sizes
#define MAX_NUM_POINTS 512
#define MAX_NUM_PATCHES 32
#define MAX_POINTS_PER_LAYER 256
#define MAX_PARALLELOGRAMS_PER_PATCH 32

// constants
#define NUM_POINTS_IN_SUPERPOINT 16
#define NUM_LAYERS 5

#ifdef DEBUG
#define D(x) x
#else
#define D(x)
#endif
