cmake_minimum_required (VERSION 3.1)

set (CMAKE_CXX_STANDARD 14)

project (registerer_test)

include(ExternalProject)
ExternalProject_Add(gtest
  URL https://github.com/google/googletest/archive/release-1.11.0.zip
  PREFIX ${CMAKE_CURRENT_BINARY_DIR}/gtest
  INSTALL_COMMAND ""
)
ExternalProject_Get_Property(gtest source_dir binary_dir)


add_executable(registerer_test ./src/main.cpp)

message(STATUS "the binary_dir variable is ${binary_dir} !!!!!????")
message(STATUS "the source_dir variable is ${source_dir} !!!!!????")

add_dependencies(registerer_test gtest)
include_directories(${source_dir}/googletest/include)
target_link_libraries(registerer_test ${binary_dir}/lib/libgtest.a)
target_link_libraries(registerer_test ${binary_dir}/lib/libgtest_main.a)

    
enable_testing()
add_test(NAME    registerer_test 
         COMMAND registerer_test)

