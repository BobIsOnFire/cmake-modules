# Prerequisites

Here is what I used during my testing:

* cmake 3.26.2
* ninja-build 1.11.1
* clang, clangd and libc++ 16.0.0

# Run

Verify that `cmake/toolchains/clang16-linux.cmake` points to your compiler, then run:

```
cmake --preset clang16-linux-debug
cmake --build ./build
ctest --test-dir ./build
```

Also works correctly in VSCode, only clangd does not cooperate much.

