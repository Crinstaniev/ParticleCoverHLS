#ifndef __FILE_READER_H__
#define __FILE_READER_H__

#include "constants.h"
#include "event.h"
#include <string>
#include <vector>

std::vector<std::string> split_string(std::string str,
                                      const std::string splitter = "),(");

event_s *file_reader_read(const std::string &filename,
                                 const int stop = 128);

#endif