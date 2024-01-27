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
#define AUTOTB_TVIN_point_arr_in "../tv/cdatafile/c.dummy_top_level_function.autotvin_point_arr_in.dat"
#define AUTOTB_TVOUT_point_arr_in "../tv/cdatafile/c.dummy_top_level_function.autotvout_point_arr_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_point_arr_out "../tv/cdatafile/c.dummy_top_level_function.autotvin_point_arr_out.dat"
#define AUTOTB_TVOUT_point_arr_out "../tv/cdatafile/c.dummy_top_level_function.autotvout_point_arr_out.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_point_arr_in "../tv/rtldatafile/rtl.dummy_top_level_function.autotvout_point_arr_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_point_arr_out "../tv/rtldatafile/rtl.dummy_top_level_function.autotvout_point_arr_out.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  point_arr_in_depth = 0;
  point_arr_out_depth = 0;
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
  total_list << "{point_arr_in " << point_arr_in_depth << "}\n";
  total_list << "{point_arr_out " << point_arr_out_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int point_arr_in_depth;
    int point_arr_out_depth;
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
struct __cosim_s18__ { char data[24]; };
extern "C" void dummy_top_level_function_hw_stub_wrapper(volatile void *, volatile void *);

extern "C" void apatb_dummy_top_level_function_hw(volatile void * __xlx_apatb_param_point_arr_in, volatile void * __xlx_apatb_param_point_arr_out) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_point_arr_out);
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
          std::vector<sc_bv<192> > point_arr_out_pc_buffer(1025);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "point_arr_out");
  
            // push token into output port buffer
            if (AESL_token != "") {
              point_arr_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1025; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_point_arr_out)[j*3+0] = point_arr_out_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_point_arr_out)[j*3+1] = point_arr_out_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_point_arr_out)[j*3+2] = point_arr_out_pc_buffer[i].range(191,128).to_int64();
}}}
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
//point_arr_in
aesl_fh.touch(AUTOTB_TVIN_point_arr_in);
aesl_fh.touch(AUTOTB_TVOUT_point_arr_in);
//point_arr_out
aesl_fh.touch(AUTOTB_TVIN_point_arr_out);
aesl_fh.touch(AUTOTB_TVOUT_point_arr_out);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_point_arr_in = 0;
// print point_arr_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_point_arr_in, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_point_arr_in = 0*24;
  if (__xlx_apatb_param_point_arr_in) {
    for (int j = 0  - 0, e = 1025 - 0; j != e; ++j) {
sc_bv<192> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_point_arr_in)[j*3+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_point_arr_in)[j*3+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_point_arr_in)[j*3+2];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_point_arr_in, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1025, &tcl_file.point_arr_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_point_arr_in, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_point_arr_out = 0;
// print point_arr_out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_point_arr_out, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_point_arr_out = 0*24;
  if (__xlx_apatb_param_point_arr_out) {
    for (int j = 0  - 0, e = 1025 - 0; j != e; ++j) {
sc_bv<192> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+2];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_point_arr_out, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1025, &tcl_file.point_arr_out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_point_arr_out, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
dummy_top_level_function_hw_stub_wrapper(__xlx_apatb_param_point_arr_in, __xlx_apatb_param_point_arr_out);
CodeState = DUMP_OUTPUTS;
// print point_arr_out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_point_arr_out, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_point_arr_out = 0*24;
  if (__xlx_apatb_param_point_arr_out) {
    for (int j = 0  - 0, e = 1025 - 0; j != e; ++j) {
sc_bv<192> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_point_arr_out)[j*3+2];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_point_arr_out, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1025, &tcl_file.point_arr_out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_point_arr_out, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
