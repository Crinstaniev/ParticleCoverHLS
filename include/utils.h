#ifndef __UTILS_H__
#define __UTILS_H__

// TODO: optimize in the future
template <typename T> T find_max_in_array(T *array, int size) {
  T max = array[0];
  for (int i = 1; i < size; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }
  return max;
}

// TODO: optimize in the future
template <typename T> T find_min_in_array(T *array, int size) {
  T min = array[0];
  for (int i = 1; i < size; i++) {
    if (array[i] < min) {
      min = array[i];
    }
  }
  return min;
}

#endif