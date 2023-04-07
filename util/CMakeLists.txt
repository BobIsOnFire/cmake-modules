add_library(util)
target_sources(util
  PUBLIC
    FILE_SET cxx_modules TYPE CXX_MODULES FILES
      util.cpp
)
