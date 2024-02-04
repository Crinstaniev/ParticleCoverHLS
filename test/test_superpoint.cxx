#include "event.h"
#include "file_reader.h"
#include "point.h"
#include "superpoint.h"

#include <string>

int main(void) {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path, 128);
  point_s *points = events[0].list_of_points;

  superpoint_s sp = superpoint_init(points, events[0].num_points);

  // print superpoint in green
  std::cerr << "\033[1;32m" << sp << "\033[0m" << std::endl;

  return 0;
}