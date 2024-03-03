#include "makepatch_hls.h"
#include "hls_stream.h"
#include "system.h"
#include <climits>
#include <cmath>
#include <string>

static double trapezoid_edges[NUM_LAYERS] = {0.0, 0.0, 0.0, 0.0, 0.0};

namespace synth {

// typedef struct {
//   point_s points[MAX_POINTS_PER_LAYER];
//   int num_points;
// } point_arr_s;

/**
 * This function loads data into stream
 */
void load_data(cover_s &cover, hls::stream<point_arr_s> &points_stream) {
  // load points into stream
  for (size_t i = 0; i < NUM_LAYERS; i++) {
    // load a layer of points
    point_arr_s points_arr;
    points_arr.num_points = cover.data.n_points[i];
    for (size_t j = 0; j < MAX_POINTS_PER_LAYER; j++) {
      points_arr.points[j] = cover.data.array[i][j];
    }
    points_stream.write(points_arr);
  }
}

void read_data(hls::stream<point_arr_s> &points_arr_stream,
               point_arr_s *points_arr) {
  // read all 5 layers from stream
  for (size_t i = 0; i < NUM_LAYERS; i++) {
    point_arr_s points_arr = points_arr_stream.read();
    for (size_t j = 0; j < MAX_POINTS_PER_LAYER; j++) {
      points_arr.points[j] = points_arr.points[j];
    }
  }
}

void copy_row_data_from_points_arr(point_arr_s points_arr, point_s row_data[]) {
  for (size_t i = 0; i < MAX_POINTS_PER_LAYER; i++) {
#pragma HLS unroll
    row_data[i] = points_arr.points[i];
  }

  return;
}

void find_start_index(point_s row_data[], double projectionToRow,
                      int &start_index, double &start_value) {
  for (size_t j = 0; j < MAX_NUM_POINTS; j++) {
    if (std::abs(row_data[j].z - projectionToRow) < start_value) {
      start_value = std::abs(row_data[j].z - projectionToRow);
      start_index = j;
    }
  }
}

void find_bounds(int *left_bound, int *right_bound, point_s row_data[],
                 double projectionToRow, double trapezoid_edge) {
  int lbVal = INT_MAX;
  int rbVal = INT_MAX;

  for (size_t j = 0; j < MAX_NUM_POINTS; j++) {
    if (std::abs((row_data[j].z + trapezoid_edge + BOUNDARY_POINT_OFFSET)) <
        lbVal) {
      *left_bound = j;
      lbVal =
          std::abs((row_data[j].z + trapezoid_edge + BOUNDARY_POINT_OFFSET));
    }

    if (std::abs((row_data[j].z - trapezoid_edge - BOUNDARY_POINT_OFFSET)) <
        rbVal) {
      *right_bound = j;
      rbVal =
          std::abs((row_data[j].z - trapezoid_edge - BOUNDARY_POINT_OFFSET));
    }
  }

  return;
}

void make_patch_aligned_to_line(hls::stream<point_arr_s> &points_arr_stream_in,
                                hls::stream<patch_s> &patch_stream_out) {
  // row_data is equivalent to points_arr_stream

  // temporary
  double radii[NUM_LAYERS] = {5.0, 10.0, 15.0, 20.0, 25.0};

  for (size_t i = 0; i < NUM_LAYERS; i++) {
    double y = radii[i];

    point_arr_s points_arr_curr = points_arr_stream_in.read();
    point_s row_data[MAX_NUM_POINTS];

    copy_row_data_from_points_arr(points_arr_curr, row_data);

    double r_max = radii[NUM_LAYERS - 1];
    double projectionToRow =
        (Z_TOP - APEXZ0) * (y - radii[0]) / (r_max - radii[0]) + APEXZ0;

    int start_index = 0;
    double start_value = INT_MAX;

    find_start_index(row_data, projectionToRow, start_index, start_value);

    // find bounds
    int left_bound = 0;
    int right_bound = 0;

    find_bounds(&left_bound, &right_bound, row_data, projectionToRow,
                trapezoid_edges[i]);

    // DEBUG
    int row_list_size = points_arr_curr.num_points;

    // if (start_index != (row_list_size - 1)) {
    //   std::cout << "row " << i + 1 << " start_index " << start_index
    //             << " start_value " << start_value
    //             << " z: " << row_data[start_index].z << std::endl;
    //   if (start_value < -1 * ALIGNMENT_ACCURACY) {
    //     start_index += 1;
    //     start_value = row_data[start_index].z - projectionToRow;
    //     std::cout << "row " << i + 1 << " updated start_index " <<
    //     start_index
    //               << " start_value " << start_value
    //               << " z: " << row_data[start_index].z << std::endl;
    //   }
    // }
  }
}
}; // namespace synth

// system top
void make_patch_aligned_to_line_top(cover_s &cover, double apexZ0, double z_top,
                                    int ppl, bool leftRight,
                                    bool double_middleLayers_ppl) {
  synth::trapezoid_edges[0] = cover.env.trapezoid_edges[0];
  synth::trapezoid_edges[1] = cover.env.trapezoid_edges[1];
  synth::trapezoid_edges[2] = cover.env.trapezoid_edges[2];
  synth::trapezoid_edges[3] = cover.env.trapezoid_edges[3];
  synth::trapezoid_edges[4] = cover.env.trapezoid_edges[4];

  hls::stream<synth::point_arr_s> points_arr_stream;
  hls::stream<patch_s> patch_stream;

  synth::load_data(cover, points_arr_stream);

  synth::make_patch_aligned_to_line(points_arr_stream, patch_stream);

  patch_s patch = patch_stream.read();
}