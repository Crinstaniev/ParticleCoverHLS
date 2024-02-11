#include "system.h"

#include <cstddef>
#include <iostream>
#include <string>

int main(void) {
  // prepare data to read
  std::cout << "[IMFO] Preparing data for system" << std::endl;
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path);

  event_s event = events[0];

  // run system
  std::cout << "[IMFO] Running System" << std::endl;
  size_t *result = new size_t;

  system_top(event, result);

  // print result
  std::cout << "[IMFO] Printing Result" << std::endl;
  std::cout << "Result: " << *result << std::endl;

  std::cout << "[IMFO] Execution Finished" << std::endl;

  return 0;
}