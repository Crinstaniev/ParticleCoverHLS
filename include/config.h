#pragma once

// debug config
#define CONFIG_DEBUG_PRINT_ALL false
#define CONFIG_IS_SYNTHESIS true

#ifdef DEBUG
#define D(x) x
#else
#define D(x)
#endif

#if CONFIG_DEBUG_PRINT_ALL == 1
#define DEBUG_PRINT_ALL(x) x
#else
#define DEBUG_PRINT_ALL(x)
#endif // DEBUG_PRINT_ALL

// array sizes
#define MAX_NUM_POINTS 512
#define MAX_NUM_PATCHES 32
#define MAX_POINTS_PER_LAYER 256
#define MAX_PARALLELOGRAMS_PER_PATCH 32

// constants
#define NUM_POINTS_IN_SUPERPOINT 16
#define NUM_LAYERS 5
