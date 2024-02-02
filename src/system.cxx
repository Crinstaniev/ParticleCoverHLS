
#include <stdlib.h>

#ifdef DEBUG
#include <iostream>
#endif

int main(void) {
#ifdef DEBUG
  std::cout << "[INFO] Entered System" << std::endl;
#endif

  return EXIT_SUCCESS;
}