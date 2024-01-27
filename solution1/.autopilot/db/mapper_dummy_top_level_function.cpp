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
struct __cosim_s18__ { char data[24]; };
extern "C" void dummy_top_level_function(__cosim_s18__*, __cosim_s18__*);
extern "C" void apatb_dummy_top_level_function_hw(volatile void * __xlx_apatb_param_point_arr_in, volatile void * __xlx_apatb_param_point_arr_out) {
  // Collect __xlx_point_arr_in__tmp_vec
  vector<sc_bv<192> >__xlx_point_arr_in__tmp_vec;
  for (int j = 0, e = 1025; j != e; ++j) {
    sc_bv<192> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_point_arr_in)[j*3+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_point_arr_in)[j*3+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_point_arr_in)[j*3+2];
    __xlx_point_arr_in__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_point_arr_in = 1025;
  int __xlx_offset_param_point_arr_in = 0;
  int __xlx_offset_byte_param_point_arr_in = 0*24;
  __cosim_s18__* __xlx_point_arr_in__input_buffer= new __cosim_s18__[__xlx_point_arr_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_point_arr_in__tmp_vec.size(); ++i) {
    ((long long*)__xlx_point_arr_in__input_buffer)[i*3+0] = __xlx_point_arr_in__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_point_arr_in__input_buffer)[i*3+1] = __xlx_point_arr_in__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_point_arr_in__input_buffer)[i*3+2] = __xlx_point_arr_in__tmp_vec[i].range(191, 128).to_uint64();
  }
  // Collect __xlx_point_arr_out__tmp_vec
  vector<sc_bv<192> >__xlx_point_arr_out__tmp_vec;
  for (int j = 0, e = 1025; j != e; ++j) {
    sc_bv<192> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+2];
    __xlx_point_arr_out__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_point_arr_out = 1025;
  int __xlx_offset_param_point_arr_out = 0;
  int __xlx_offset_byte_param_point_arr_out = 0*24;
  __cosim_s18__* __xlx_point_arr_out__input_buffer= new __cosim_s18__[__xlx_point_arr_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_point_arr_out__tmp_vec.size(); ++i) {
    ((long long*)__xlx_point_arr_out__input_buffer)[i*3+0] = __xlx_point_arr_out__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_point_arr_out__input_buffer)[i*3+1] = __xlx_point_arr_out__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_point_arr_out__input_buffer)[i*3+2] = __xlx_point_arr_out__tmp_vec[i].range(191, 128).to_uint64();
  }
  // DUT call
  dummy_top_level_function(__xlx_point_arr_in__input_buffer, __xlx_point_arr_out__input_buffer);
// print __xlx_apatb_param_point_arr_in
  sc_bv<192>*__xlx_point_arr_in_output_buffer = new sc_bv<192>[__xlx_size_param_point_arr_in];
  for (int i = 0; i < __xlx_size_param_point_arr_in; ++i) {
    char* start = (char*)(&(__xlx_point_arr_in__input_buffer[__xlx_offset_param_point_arr_in]));
    __xlx_point_arr_in_output_buffer[i].range(63, 0) = ((long long*)start)[i*3+0];
    __xlx_point_arr_in_output_buffer[i].range(127, 64) = ((long long*)start)[i*3+1];
    __xlx_point_arr_in_output_buffer[i].range(191, 128) = ((long long*)start)[i*3+2];
  }
  for (int i = 0; i < __xlx_size_param_point_arr_in; ++i) {
    ((long long*)__xlx_apatb_param_point_arr_in)[i*3+0] = __xlx_point_arr_in_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_point_arr_in)[i*3+1] = __xlx_point_arr_in_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_point_arr_in)[i*3+2] = __xlx_point_arr_in_output_buffer[i].range(191, 128).to_uint64();
  }
// print __xlx_apatb_param_point_arr_out
  sc_bv<192>*__xlx_point_arr_out_output_buffer = new sc_bv<192>[__xlx_size_param_point_arr_out];
  for (int i = 0; i < __xlx_size_param_point_arr_out; ++i) {
    char* start = (char*)(&(__xlx_point_arr_out__input_buffer[__xlx_offset_param_point_arr_out]));
    __xlx_point_arr_out_output_buffer[i].range(63, 0) = ((long long*)start)[i*3+0];
    __xlx_point_arr_out_output_buffer[i].range(127, 64) = ((long long*)start)[i*3+1];
    __xlx_point_arr_out_output_buffer[i].range(191, 128) = ((long long*)start)[i*3+2];
  }
  for (int i = 0; i < __xlx_size_param_point_arr_out; ++i) {
    ((long long*)__xlx_apatb_param_point_arr_out)[i*3+0] = __xlx_point_arr_out_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_point_arr_out)[i*3+1] = __xlx_point_arr_out_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_point_arr_out)[i*3+2] = __xlx_point_arr_out_output_buffer[i].range(191, 128).to_uint64();
  }
}
