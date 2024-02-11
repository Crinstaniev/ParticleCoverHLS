#include "event.h"
#include "file_reader.h"
#include "patch.h"
#include "point.h"
#include "superpoint.h"

#include <string>

int main(void) {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  // get some superpoints
  event_s *events = file_reader_read(file_path, 128);
  point_s *points = events[0].list_of_points;

  // print superpoint in green
  // std::cerr << "\033[1;32m" << sp << "\033[0m" << std::endl;

  // make a patch from the superpoint
  // patch_s p = patch_init(events[0].env, &sp, 1, 0.0);

  // print patch in green
  // std::cerr << "\033[1;32m" << p << "\033[0m" << std::endl;

  return 0;
}