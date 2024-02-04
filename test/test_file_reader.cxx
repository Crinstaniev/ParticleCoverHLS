#include "file_reader.h"
#include <string>

int main(void) {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path, 128);

  // print the event, in green
  std::cerr << "\033[1;32m" << *events << "\033[0m" << std::endl;

  return 0;
}