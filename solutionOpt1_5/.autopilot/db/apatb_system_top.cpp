#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_points "../tv/cdatafile/c.system_top.autotvin_points.dat"
#define AUTOTB_TVOUT_points "../tv/cdatafile/c.system_top.autotvout_points.dat"
// wrapc file define:
#define AUTOTB_TVIN_num_points "../tv/cdatafile/c.system_top.autotvin_num_points.dat"
#define AUTOTB_TVOUT_num_points "../tv/cdatafile/c.system_top.autotvout_num_points.dat"
// wrapc file define:
#define AUTOTB_TVIN_patch_stream_V "../tv/cdatafile/c.system_top.autotvin_patch_stream_V.dat"
#define AUTOTB_TVOUT_patch_stream_V "../tv/cdatafile/c.system_top.autotvout_patch_stream_V.dat"
#define WRAPC_STREAM_SIZE_OUT_patch_stream_V "../tv/stream_size/stream_size_out_patch_stream_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_patch_stream_V "../tv/stream_size/stream_egress_status_patch_stream_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_points "../tv/rtldatafile/rtl.system_top.autotvout_points.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_num_points "../tv/rtldatafile/rtl.system_top.autotvout_num_points.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_patch_stream_V "../tv/rtldatafile/rtl.system_top.autotvout_patch_stream_V.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  points_depth = 0;
  num_points_depth = 0;
  patch_stream_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{points " << points_depth << "}\n";
  total_list << "{num_points " << num_points_depth << "}\n";
  total_list << "{patch_stream_V " << patch_stream_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int points_depth;
    int num_points_depth;
    int patch_stream_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s10__ { char data[16]; };
struct __cosim_sC__ { char data[16]; };
extern "C" void system_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_system_top_hw(volatile void * __xlx_apatb_param_points, volatile void * __xlx_apatb_param_num_points, volatile void * __xlx_apatb_param_patch_stream) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_patch_stream_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_patch_stream_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_patch_stream_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_patch_stream_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<96> > patch_stream_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "patch_stream_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              patch_stream_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = patch_stream_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = patch_stream_V_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//points
aesl_fh.touch(AUTOTB_TVIN_points);
aesl_fh.touch(AUTOTB_TVOUT_points);
//num_points
aesl_fh.touch(AUTOTB_TVIN_num_points);
aesl_fh.touch(AUTOTB_TVOUT_num_points);
//patch_stream_V
aesl_fh.touch(AUTOTB_TVIN_patch_stream_V);
aesl_fh.touch(AUTOTB_TVOUT_patch_stream_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_patch_stream_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_patch_stream_V);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_points = 0;
// print points Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_points, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_points = 0*16;
  if (__xlx_apatb_param_points) {
    for (int j = 0  - 0, e = 2560 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_points)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_points)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_points, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2560, &tcl_file.points_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_points, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_num_points = 0;
// print num_points Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_num_points, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_num_points = 0*4;
  if (__xlx_apatb_param_num_points) {
    for (int j = 0  - 0, e = 5 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_num_points)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_num_points, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(5, &tcl_file.num_points_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_num_points, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s10__> __xlx_apatb_param_patch_stream_stream_buf;
long __xlx_apatb_param_patch_stream_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->size();
CodeState = CALL_C_DUT;
system_top_hw_stub_wrapper(__xlx_apatb_param_points, __xlx_apatb_param_num_points, __xlx_apatb_param_patch_stream);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_patch_stream_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->size() - __xlx_apatb_param_patch_stream_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->empty())
    __xlx_apatb_param_patch_stream_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->read());
  for (int i = 0; i < __xlx_apatb_param_patch_stream_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_patch_stream)->write(__xlx_apatb_param_patch_stream_stream_buf[i]);
  }
// print patch_stream_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_patch_stream_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_patch_stream_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_patch_stream_stream_buf[__xlx_apatb_param_patch_stream_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_patch_stream_stream_buf[__xlx_apatb_param_patch_stream_stream_buf_size+j])[0*1+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_patch_stream_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_patch_stream_stream_buf_final_size, &tcl_file.patch_stream_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_patch_stream_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_patch_stream_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_patch_stream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_patch_stream_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_patch_stream_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
