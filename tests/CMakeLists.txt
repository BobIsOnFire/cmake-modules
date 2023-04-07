add_executable(hello hello.cpp)
target_link_libraries(hello PRIVATE util)

add_test(NAME it_works COMMAND hello)
