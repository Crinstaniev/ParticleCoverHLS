#ifndef __DATASET_H__
#define __DATASET_H__

#include "environment.h"
#include "point.h"
#include <cstddef>
#include <iostream>

typedef struct {
  environment_s *env;
  point_s array[NUM_LAYERS][MAX_NUM_POINTS];
  int n_points[NUM_LAYERS];
  size_t total_points;
  double boundaryPoint_offset;
} dataset_s;

dataset_s dataset_init(environment_s &env);

void dataset_import_data(dataset_s &dataset, point_s *data_array,
                         size_t data_array_size);

void dataset_add_boundary_point(dataset_s &dataset, double offset);

// DEBUG FUNCTIONS
std::ostream &operator<<(std::ostream &os, const dataset_s &dataset);

#endif // __DATASET_H__