### Relevant links:
# Standard reference: https://en.cppreference.com/w/cpp/language/modules
# Clang reference: https://clang.llvm.org/docs/StandardCPlusPlusModules.html
# CMake blog post and basic example: https://www.kitware.com/import-cmake-c20-modules/
# Experimental features doc: https://github.com/Kitware/CMake/blob/master/Help/dev/experimental.rst#c20-module-apis
# Discourse about various changes: https://discourse.cmake.org/t/c-20-modules-update/7330
# A bunch of examples: https://github.com/mathstuf/cxx-modules-sandbox
#
# Note on clangd: it is easily getting messed up when you try to develop multiple
# modules at once, so need to rerun builds and restart clangd pretty often

set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API "2182bf5c-ef0d-489a-91da-49dbc3090d2a")
set(CMAKE_EXPERIMENTAL_CXX_MODULE_DYNDEP 1)

# CMake does not add any info about modules into compile_commands.json
# This is a hack from https://gitlab.kitware.com/cmake/cmake/-/issues/24618
set(CMAKE_CXX_COMPILE_OBJECT "${CMAKE_CXX_COMPILE_OBJECT} @<OBJECT>.modmap")
