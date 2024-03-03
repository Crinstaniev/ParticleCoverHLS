#include "makepatch_hls.h"
#include "system.h"

int main(void) {
  std::string file_path = "../data/wedgeData_v3_128.txt";

  event_s *events = file_reader_read(file_path, 128);
  point_s *points = events[0].list_of_points;
  environment_s env = events[0].env;
  dataset_s ds = dataset_init(env);

  dataset_import_data(ds, points, events[0].num_points);
  dataset_add_boundary_point(ds, 0.0001);

  cover_s cover = cover_init(env, ds);

  // extract trapezoid edges
  for (size_t i = 0; i < NUM_LAYERS; i++) {
    synth::trapezoid_edges[i] = cover.env.trapezoid_edges[i];
  }

  hls::stream<synth::point_arr_s> points_arr_stream;
  hls::stream<patch_s> patch_stream;

  synth::load_data(cover, points_arr_stream);

  // run system
  synth::make_patch_aligned_to_line(points_arr_stream, patch_stream);

  // read the patche
  patch_s patch = patch_stream.read();

  return 0;
}