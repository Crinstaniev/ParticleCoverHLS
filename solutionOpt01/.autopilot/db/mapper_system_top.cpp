#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_patch_stream_V_cap_bc;
static AESL_RUNTIME_BC __xlx_patch_stream_V_size_Reader("../tv/stream_size/stream_size_out_patch_stream_V.dat");
struct __cosim_s10__ { char data[16]; };
struct __cosim_sC__ { char data[12]; };
extern "C" void system_top(__cosim_s10__*, int*, __cosim_s10__*);
extern "C" void apatb_system_top_hw(volatile void * __xlx_apatb_param_points, volatile void * __xlx_apatb_param_num_points, volatile void * __xlx_apatb_param_patch_stream) {
  // Collect __xlx_points__tmp_vec
  vector<sc_bv<128> >__xlx_points__tmp_vec;
  for (int j = 0, e = 2560; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_points)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_points)[j*2+1];
    __xlx_points__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_points = 2560;
  int __xlx_offset_param_points = 0;
  int __xlx_offset_byte_param_points = 0*16;
  __cosim_s10__* __xlx_points__input_buffer= new __cosim_s10__[__xlx_points__tmp_vec.size()];
  for (int i = 0; i < __xlx_points__tmp_vec.size(); ++i) {
    ((long long*)__xlx_points__input_buffer)[i*2+0] = __xlx_points__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_points__input_buffer)[i*2+1] = __xlx_points__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_num_points__tmp_vec
  vector<sc_bv<32> >__xlx_num_points__tmp_vec;
  for (int j = 0, e = 5; j != e; ++j) {
    __xlx_num_points__tmp_vec.push_back(((int*)__xlx_apatb_param_num_points)[j]);
  }
  int __xlx_size_param_num_points = 5;
  int __xlx_offset_param_num_points = 0;
  int __xlx_offset_byte_param_num_points = 0*4;
  int* __xlx_num_points__input_buffer= new int[__xlx_num_points__tmp_vec.size()];
  for (int i = 0; i < __xlx_num_points__tmp_vec.size(); ++i) {
    __xlx_num_points__input_buffer[i] = __xlx_num_points__tmp_vec[i].range(31, 0).to_uint64();
  }
  //Create input buffer for patch_stream
  ap_apatb_patch_stream_V_cap_bc = __xlx_patch_stream_V_size_Reader.read_size();
  __cosim_s10__* __xlx_patch_stream_input_buffer= new __cosim_s10__[ap_apatb_patch_stream_V_cap_bc];
  // DUT call
  system_top(__xlx_points__input_buffer, __xlx_num_points__input_buffer, __xlx_patch_stream_input_buffer);
// print __xlx_apatb_param_points
  sc_bv<128>*__xlx_points_output_buffer = new sc_bv<128>[__xlx_size_param_points];
  for (int i = 0; i < __xlx_size_param_points; ++i) {
    char* start = (char*)(&(__xlx_points__input_buffer[__xlx_offset_param_points]));
    __xlx_points_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_points_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_points; ++i) {
    ((long long*)__xlx_apatb_param_points)[i*2+0] = __xlx_points_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_points)[i*2+1] = __xlx_points_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_num_points
  sc_bv<32>*__xlx_num_points_output_buffer = new sc_bv<32>[__xlx_size_param_num_points];
  for (int i = 0; i < __xlx_size_param_num_points; ++i) {
    __xlx_num_points_output_buffer[i] = __xlx_num_points__input_buffer[i+__xlx_offset_param_num_points];
  }
  for (int i = 0; i < __xlx_size_param_num_points; ++i) {
    ((int*)__xlx_apatb_param_num_points)[i] = __xlx_num_points_output_buffer[i].to_uint64();
  }
  for (unsigned i = 0; i <ap_apatb_patch_stream_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->write(__xlx_patch_stream_input_buffer[i]);
}
