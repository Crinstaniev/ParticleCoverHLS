#include "file_reader.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <regex>
#include <vector>

static std::vector<std::string> split_string(std::string str,
                                             const std::string splitter) {
  std::vector<std::string> result;
  std::string current_str = "";

  for (size_t i = 0; i < str.size(); ++i) {
    bool flag = true;

    for (size_t j = 0; j < splitter.size(); ++j) {
      if (str[i + j] != splitter[j]) {
        flag = false;
      }
    }

    if (flag) {
      if (current_str.size() > 0) {
        result.push_back(current_str);
        current_str = "";
        i += splitter.size() - 1;
      }
    } else {
      current_str += str[i];
    }
  }
  result.push_back(current_str);

  return result;
}

static event_s *file_reader_read(const std::string &filename, const int stop) {
  std::ifstream file;
  std::string line;

  event_s events[MAX_NUM_EVENTS];

  file.open(filename);

  if (!file.is_open()) {
    std::cerr << "Error: could not open file " << filename << std::endl;
    return NULL;
  }

  size_t line_index = 0;

  while (std::getline(file, line)) {
    line = std::regex_replace(line, std::regex("(^[ ]+)|([ ]+$)"), "");
    if (!line.empty()) {
      line = line.substr(1, line.size() - 2);

      std::vector<std::string> tuples = split_string(line);
      std::vector<std::vector<std::string>> final_tuples;

      for (size_t i = 0; i < tuples.size(); ++i) {
        std::vector<std::string> temp = split_string(tuples[i], ",");
        final_tuples.push_back(temp);
      }

      std::vector<point_s> list_of_points;

      for (size_t i = 0; i < final_tuples.size(); ++i) {
        std::vector<std::string> ct = final_tuples[i];
        point_s temp = point_init(std::stod(ct[0]), std::stod(ct[1]),
                                  std::stod(ct[2]), std::stod(ct[3]));
        list_of_points.push_back(temp);
      }

      std::vector<double> radii;

      for (size_t i = 0; i < list_of_points.size(); ++i) {
        radii.push_back(list_of_points[i].radius);
      }

      std::sort(radii.begin(), radii.end());

      int num_layers = radii.size();

      // TODO: figure out how to properly initialize environment
      environment_s env = environment_init();

      // TODO: implement rest
    }
  }

  return NULL;
}