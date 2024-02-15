#ifndef __SYSTEM_H__
#define __SYSTEM_H__

#include "constants.h"
#include "cover.h"
#include "dataset.h"
#include "environment.h"
#include "event.h"
#include "file_reader.h"
#include "patch.h"
#include "point.h"
#include "sim_utils.h"
#include "superpoint.h"

void system_top(event_s event, size_t *total_result);

#endif // __SYSTEM_H__