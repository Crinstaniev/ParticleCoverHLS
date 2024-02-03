#include "event.h"

event_s event_init(environment_s env) {
  event_s e;
  e.env = env;
  e.num_points = 0;

  return e;
}