#pragma once

#include <iostream>

#define IS_SYNTHESIS 1
// #define IS_SYNTHESIS 0

#if IS_SYNTHESIS == 0
#define DEBUG(x) x
#else
#define DEBUG(x)
#endif // IS_SYNTHESIS