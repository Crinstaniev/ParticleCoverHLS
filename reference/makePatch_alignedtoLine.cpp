#include "reference.h"

int main() {
  string filepath = "../data/wedgeData_v3_128.txt";

  // implemented
  vector<Event> events = FileReader::readFile(filepath);

  Environment env = events[0].env;
  vector<Point> points = events[0].list_of_Points;

  // start systhesizable part
  env = Environment(50);
  DataSet ds(env);

  // print the enviornment
  cout << "Radii size: " << env.radii.size() << endl;

  ds.importData(points);
  ds.addBoundaryPoint();

  std::cout << "Dataset Total Points: " << ds.total_points << std::endl;

  wedgeCover cov(env, ds);
  cov.tester();
};