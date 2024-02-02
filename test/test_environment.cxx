#include "environment.h"
#include <iostream>

int main(void) {
  // environment_s env = environment_init();

  // environment_print(env);

  environment_s env = environment_init();

  std::cerr << "Top Layer Limit: " << env.top_layer_lim << std::endl;

  environment_print(env);

  return 0;
}