# PatchMaker CHANGELOG

## [TASKS]

## [2024-07-28]

### [IMPL] Patch Buffer Methods

- Implemented `patch_buffer_delete_patch` and `patch_buffer_add_patch`.
- Passed test with custom test bench.
- Not yet tested with c-sim and co-sim.
- Not yet integrated with the main program.

## [2024-07-26]

Update patch buffer's structure and logic.

### [IMPL] Patch Buffer Data Structure

```C
index_t num_patches;
```

`num_patches` is the number of patches in the buffer.

```C
index_t patch_buffer_order[PATCH_BUFFER_SIZE];
```

`patch_buffer_order` is a queue that keeps track of the order of patches in the buffer. For example, if `patch_order` is `{2, 1, 0}`, then the most recent patch is at index 2, the second most recent patch is at index 1, and the third most recent patch is at index 0.

```C
bool patch_buffer_valid[PATCH_BUFFER_SIZE];
```

`patch_buffer_valid` is a list of booleans that indicates whether a patch is valid or not. If `patch_buffer_valid[i]` is `true`, then the patch at index `i` is valid. If `patch_buffer_valid[i]` is `false`, then the patch at index `i` is invalid. When overriding a patch, the valid patch will be ported to `patch_stream` and the invalid patch will be voided.

```C
point_t patch_buffer[PATCH_BUFFER_SIZE][NUM_LAYERS][NUM_POINTS_IN_SUPERPOINT];
```

`patch_buffer` can store up the three previous patches. The pathces inside is out-of-order, but the order is stored in `patch_buffer_order` queue.

### [IMPL] Patch Buffer Methods

```C
void patch_buffer_add_patch(__ARGS__);
```

`patch_buffer_add_patch` adds a patch to the buffer with the following steps:

- Calculate the index of the next patch to be added and overrided.
- If the overridden patch is valid, then port the patch to `patch_stream`.
- Add the new patch to the buffer and mark it as valid.
- Update the order of patches in `patch_buffer_order` queue.

```C
void patch_buffer_delete_patch(__ARGA__);
```

`patch_buffer_delete_patch` deletes a patch from the buffer with the following steps:

- Mark the patch as invalid in `patch_buffer_valid`.
- Update the order of patch indexes in `patch_buffer_order`.

## [2024-07-21]

- Efficiency test for how many patches are made before a real patch is made
- Two statistical plots produced

## [2024-07-20]

### [MOD]

- eleminate all `min`, `max`, and `abs` functions from stdlib
- replaced all `float` conversion to `float_value_t` conversion

### [IMPL]

- Partially implement the loop for horizontal shift.
- The loop haven't been tested yet since case not met.
- Delete patch part not implemented yet since modification to patch buffer is required.

## [2024-07-12]

### [IMPL]

Implemented `getShadows()`

- Passed C-Synthesis
- Passed Co-Simulation

## [2024-07-10]

### [BUG FIXES]

#### infinite loop when adjusting white spaces

Working on bug that adjustment of whitespace runs into infinite loop.

- Inspect problem in `makepatch_alignedtoline`
  - Corrent patch is produced (by inspecting z values)
  - Inspect `get_acceptancecorners`
    - `get_acceptancecorners` is not called, as well as `get_parallelogram`

By adding missing function calls, correct c_corners are produced.

#### Wrong number of iteration when adjusting white spaces

- Fixed by correcting while condition
