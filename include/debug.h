#pragma once

#include <iostream>

#define CONFIG_DEBUG_PRINT_ALL false
#define CONFIG_IS_SYNTHESIS true

#if CONFIG_IS_SYNTHESIS == 0
#define DEBUG(x) x
#else
#define DEBUG(x)
#endif // IS_SYNTHESIS

#if CONFIG_DEBUG_PRINT_ALL == 1
#define DEBUG_PRINT_ALL(x) x
#else
#define DEBUG_PRINT_ALL(x)
#endif // DEBUG_PRINT_ALL