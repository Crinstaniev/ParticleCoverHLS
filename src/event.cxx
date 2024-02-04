#include "event.h"

event_s event_init(environment_s env, point_s list_of_points[],
                   size_t num_points) {
  event_s event;
  event.env = env;
  event.num_points = num_points;
  for (size_t i = 0; i < num_points; ++i) {
    event.list_of_points[i] = list_of_points[i];
  }
  return event;
}

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const event_s &e) {
  os << "Environment: " << e.env << std::endl;
  os << "Number of Points: " << e.num_points << std::endl;
  for (size_t i = 0; i < e.num_points; ++i) {
    os << e.list_of_points[i] << std::endl;
  }
  return os;
}