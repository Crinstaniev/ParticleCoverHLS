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

  cover_s cover;

  // system_top
  std::cout << "[IMFO] Running system_top" << std::endl;
  system_top(event, &cover);

  // print the cover
  std::cout << cover << std::endl;

  return 0;
}