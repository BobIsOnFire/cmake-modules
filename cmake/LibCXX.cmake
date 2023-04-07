add_compile_options(-stdlib=libc++ -fexperimental-library)
add_link_options(-stdlib=libc++ -fexperimental-library)

execute_process(COMMAND ${CMAKE_CXX_COMPILER} -print-file-name=libc++.so OUTPUT_VARIABLE libcxx_path)
cmake_path(GET libcxx_path PARENT_PATH libcxx_dir)

add_link_options(LINKER:-rpath,${libcxx_dir})
