#include "config.h"
#include <iostream>

using namespace std;

void system_top() {
  // real system top function for synthesis

  return;
}

#if CONFIG_IS_SYNTHESIS == false
int main() {
  cout << "Hello, world!" << endl;

  return 0;
}
#endif