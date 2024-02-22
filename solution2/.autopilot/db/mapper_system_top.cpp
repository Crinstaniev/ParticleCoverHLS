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
struct __cosim_s20__ { char data[32]; };
extern "C" void system_top(__cosim_s20__*);
extern "C" void apatb_system_top_hw(volatile void * __xlx_apatb_param_cover) {
  // Collect __xlx_cover__tmp_vec
  vector<sc_bv<256> >__xlx_cover__tmp_vec;
  for (int j = 0, e = 16406; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_cover)[j*4+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_cover)[j*4+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_cover)[j*4+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_cover)[j*4+3];
    __xlx_cover__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_cover = 16406;
  int __xlx_offset_param_cover = 0;
  int __xlx_offset_byte_param_cover = 0*32;
  __cosim_s20__* __xlx_cover__input_buffer= new __cosim_s20__[__xlx_cover__tmp_vec.size()];
  for (int i = 0; i < __xlx_cover__tmp_vec.size(); ++i) {
    ((long long*)__xlx_cover__input_buffer)[i*4+0] = __xlx_cover__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_cover__input_buffer)[i*4+1] = __xlx_cover__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_cover__input_buffer)[i*4+2] = __xlx_cover__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_cover__input_buffer)[i*4+3] = __xlx_cover__tmp_vec[i].range(255, 192).to_uint64();
  }
  // DUT call
  system_top(__xlx_cover__input_buffer);
// print __xlx_apatb_param_cover
  sc_bv<256>*__xlx_cover_output_buffer = new sc_bv<256>[__xlx_size_param_cover];
  for (int i = 0; i < __xlx_size_param_cover; ++i) {
    char* start = (char*)(&(__xlx_cover__input_buffer[__xlx_offset_param_cover]));
    __xlx_cover_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_cover_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_cover_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_cover_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_cover; ++i) {
    ((long long*)__xlx_apatb_param_cover)[i*4+0] = __xlx_cover_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_cover)[i*4+1] = __xlx_cover_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_cover)[i*4+2] = __xlx_cover_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_cover)[i*4+3] = __xlx_cover_output_buffer[i].range(255, 192).to_uint64();
  }
}
