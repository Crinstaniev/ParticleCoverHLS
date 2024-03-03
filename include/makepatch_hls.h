#pragma once

#include "hls_stream.h"
#include <climits>
#include <cmath>
#include <string>

#define MAX_POINTS_PER_LAYER 256
#define APEXZ0 0
#define Z_TOP -50
#define PPL 16
#define BOUNDARY_POINT_OFFSET 0.0001
#define ALIGNMENT_ACCURACY 0.0001

// Assuming system.h defines point_s and patch_s, adjust as necessary
#include "system.h"

namespace synth {

static double trapezoid_edges[NUM_LAYERS] = {0.0, 0.0, 0.0, 0.0, 0.0};

typedef struct {
  point_s points[MAX_POINTS_PER_LAYER];
  int num_points;
} point_arr_s;

void load_data(cover_s &cover, hls::stream<point_arr_s> &points_stream);

void read_data(hls::stream<point_arr_s> &points_arr_stream,
               point_arr_s *points_arr);

void copy_row_data_from_points_arr(point_arr_s points_arr, point_s row_data[]);

void find_start_index(point_s row_data[], double projectionToRow,
                      int &start_index, double &start_value);

void find_bounds(int *left_bound, int *right_bound, point_s row_data[],
                 double projectionToRow, double trapezoid_edge);

void make_patch_aligned_to_line(hls::stream<point_arr_s> &points_arr_stream_in,
                                hls::stream<patch_s> &patch_stream_out);

} // namespace synth

// top
void make_patch_aligned_to_line_top(cover_s &cover, double apexZ0, double z_top,
                                    hls::stream<point_arr_s> &points_arr_stream,
                                    hls::stream<patch_s> &patch_stream);
