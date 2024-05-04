#include "patch_buffer.h"

void patch_buffer_init(patch_buffer_s *buffer) {
  buffer->head_idx = 0;
  buffer->size = 0;
  buffer->capacity = PATCH_BUFFER_DEPTH;
  buffer->tail = 0;
}

void patch_buffer_push_patch(patch_buffer_s *buffer, patch_s patch) {
  if (buffer->size < buffer->capacity) {
    // Buffer is not full
    buffer->patches[buffer->tail] = patch;
    buffer->tail = (buffer->tail + 1) % buffer->capacity;
    buffer->size++;
  } else {
    // Buffer is full, overwrite the oldest patch
    buffer->patches[buffer->tail] = patch;
    buffer->tail = (buffer->tail + 1) % buffer->capacity;
    buffer->head_idx = buffer->tail; // Next overwrite position
  }
}

void patch_buffer_access_patch(patch_buffer_s *buffer, int depth,
                               patch_s *patch) {
  if (depth < 0 || depth >= buffer->size) {
    // Invalid depth
    printf("Invalid depth: %d\n", depth);
    return;
  }

  int idx = (buffer->tail - 1 - depth + buffer->capacity) % buffer->capacity;
  *patch = buffer->patches[idx];

  return;
}

patch_s *patch_buffer_access_patch_ptr(patch_buffer_s *buffer, int depth) {
  if (depth < 0 || depth >= buffer->size) {
    // Invalid depth
    printf("Invalid depth: %d\n", depth);
    return NULL;
  }

  int idx = (buffer->tail - 1 - depth + buffer->capacity) % buffer->capacity;
  return &buffer->patches[idx];
}

// DEBUG FUNCTION
std::ostream &operator<<(std::ostream &os, const patch_buffer_s &buffer) {
  os << "Patch Buffer: " << std::endl;
  os << "  Head: " << buffer.head_idx << std::endl;
  os << "  Tail: " << buffer.tail << std::endl;
  os << "  Size: " << buffer.size << std::endl;
  os << "  Capacity: " << buffer.capacity << std::endl;
  return os;
}