#include "event.h"
#include "file_reader.h"
#include "point.h"
#include "reference.h"
#include "superpoint.h"
#include <ctime>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

int main(void) {
  // go to .. directory
  std::filesystem::current_path("..");

  // create folder in root directory if it doesn't exist
  std::filesystem::create_directory("tmp");

  // inside tmp folder, create a subfolder with current timestamp
  std::time_t t = std::time(0);
  std::tm *now = std::localtime(&t);
  char buffer[80];
  std::strftime(buffer, 80, "%Y-%m-%d-%H-%M-%S", now);
  std::string subfolder = "tmp/" + std::string(buffer);
  std::filesystem::create_directory(subfolder);

  std::cout << "directory created: " << subfolder << std::endl;

  // reference implementation result
  std::cout << "[TEST] testing reference implementation" << std::endl;
  string file_path = "data/wedgeData_v3_128.txt";
  std::vector<Event> events = FileReader::readFile(file_path);
  Environment env = events[0].env;
  vector<Point> points = events[0].list_of_Points;

  // print points to file
  std::string file_name = subfolder + "/points_reference.txt";
  std::ofstream file(file_name);
  for (auto &p : points) {
    file << p << std::endl;
  }
  file.close();

  // actual implementation
  std::cout << "[TEST] testing actual implementation" << std::endl;
  std::string file_path_ = "data/wedgeData_v3_128.txt";
  event_s *events_ = file_reader_read(file_path_, 128);
  point_s *points_ = events_[0].list_of_points;

  // print points to file
  std::string file_name_ = subfolder + "/points_actual.txt";
  std::ofstream file_(file_name_);
  for (auto i = 0; i < events_[0].num_points; i++) {
    file_ << points_[i] << std::endl;
  }
  file_.close();

  // compare the two files using diff, write the result to a file
  std::string diff_file = subfolder + "/diff.txt";
  std::string command =
      "diff " + file_name + " " + file_name_ + " > " + diff_file;
  system(command.c_str());

  // print the result
  std::cout << "[TEST] diff result" << std::endl;
  std::ifstream diff_file_(diff_file);
  std::string diff_content((std::istreambuf_iterator<char>(diff_file_)),
                           std::istreambuf_iterator<char>());
  std::cout << diff_content << std::endl;

  // diff should be empty
  if (diff_content.empty()) {
    std::cout << "[TEST] diff is empty" << std::endl;
  } else {
    std::cout << "[TEST] diff is NOT empty" << std::endl;
  }

  return 0;
}