#include "dataset.h"
#include <algorithm>

dataset_s dataset_init(environment_s &env) {
  dataset_s dataset;

  dataset.env = &env;

  // set all the number of points to 0
  for (int i = 0; i < NUM_LAYERS; i++) {
    dataset.n_points[i] = 0;
  }

  dataset.total_points = 0;
  dataset.boundaryPoint_offset = INT32_MIN;

  return dataset;
}

void dataset_import_data(dataset_s &dataset, point_s *data_array,
                         size_t data_array_size) {
  dataset.total_points = data_array_size;

  for (size_t i = 0; i < data_array_size; i++) {
    // append to dataset.array[data_array[i].layer_num - 1]
    dataset.array[data_array[i].layer_num - 1]
                 [dataset.n_points[data_array[i].layer_num - 1]] =
        data_array[i];
    dataset.n_points[data_array[i].layer_num - 1]++;
  }

  int ln = 0;

  for (size_t i = 0; i < NUM_LAYERS; i++) {
    // sort dataset.array[i] by z
    std::sort(
        dataset.array[i], dataset.array[i] + dataset.n_points[i],
        [](const point_s &a, const point_s &b) -> bool { return a.z < b.z; });

    ln++;
  }

  return;
}

void dataset_add_boundary_point(dataset_s &dataset, double offset) {
  dataset.boundaryPoint_offset = offset;

  for (size_t i = 0; i < dataset.env->trapezoid_edges_size; i++) {
    double phi0 = dataset.array[i][0].phi;

    dataset.array[i][dataset.n_points[i]] =
        point_init(i + 1, (i + 1) * 5, phi0,
                   -1 * dataset.env->trapezoid_edges[i] - offset);

    dataset.array[i][dataset.n_points[i] + 1] = point_init(
        i + 1, (i + 1) * 5, phi0, dataset.env->trapezoid_edges[i] + offset);

    dataset.n_points[i] += 2;
  }

  dataset.total_points = NUM_LAYERS;

  int ln = 0;

  for (size_t i = 0; i < NUM_LAYERS; i++) {
    std::sort(
        dataset.array[i], dataset.array[i] + dataset.n_points[i],
        [](const point_s &a, const point_s &b) -> bool { return a.z < b.z; });

    ln++;
  }

  for (size_t i = 0; i < dataset.env->trapezoid_edges_size; i++) {
    dataset.env->trapezoid_edges[i] += offset;
  }
}

// DEBUG FUNCTIONS
std::ostream &operator<<(std::ostream &os, const dataset_s &dataset) {
  os << "Dataset: " << std::endl;
  os << "  Total Points: " << dataset.total_points << std::endl;
  os << "  Boundary Point Offset: " << dataset.boundaryPoint_offset
     << std::endl;

  for (size_t i = 0; i < NUM_LAYERS; i++) {
    os << "  Layer " << i + 1 << " Points: " << dataset.n_points[i]
       << std::endl;
  }

  return os;
}