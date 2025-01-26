# Prerequisites

Here is what I used during my testing:

* cmake 3.30.5
* ninja-build 1.12.1
* clang, clangd and libc++ 19.1.7

# Run

Verify that `cmake/toolchains/system-clang-libcxx.cmake` points to your compiler, then run:

```
cmake --preset clang16-linux-debug
cmake --build ./build
ctest --test-dir ./build
```

Also works correctly in VSCode, though for proper clangd support need to recompile project each time new source file is added.
