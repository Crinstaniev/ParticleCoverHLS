#include "reference.h"

int main() {
  string filepath = "../data/wedgeData_v3_128.txt";

  // implemented
  vector<Event> events = FileReader::readFile(filepath);

  Environment env = events[0].env;
  vector<Point> points = events[0].list_of_Points;

  env = Environment(50);
  DataSet ds(env);

  ds.importData(points);
  ds.addBoundaryPoint();

  wedgeCover cov(env, ds);
  cov.tester();
};