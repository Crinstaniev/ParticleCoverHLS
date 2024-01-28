#include "types.h"
#include <climits>

wedgePatch_s wedgePatch_init(superPoints_s superpoints, double apexZ0) {
  // create a new wedge patch
  wedgePatch_s new_patch = {.end_layer = -1,
                            .left_end_layer = -1,
                            .right_end_layer = -1,
                            .left_end_lambdaZ = INT_MAX,
                            .right_end_lambdaZ = INT_MAX,
                            .apexZ0 = apexZ0,
                            .shadow_fromTopToInnermost_topL_jL = INT_MAX,
                            .shadow_fromTopToInnermost_topL_jR = INT_MAX,
                            .shadow_fromTopToInnermost_topR_jL = INT_MAX,
                            .shadow_fromTopToInnermost_topR_jR = INT_MAX,
                            .superpoints = superpoints};
  return new_patch;
}