#include "constants.h"
#include "environment.h"
#include <iostream>

int main(void) {
  environment_s env = environment_init();

  // print the environment, in green
  std::cerr << "\033[1;32m" << env << "\033[0m" << std::endl;

  return 0;
}