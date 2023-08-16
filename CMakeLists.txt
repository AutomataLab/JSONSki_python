cmake_minimum_required(VERSION 3.4...3.18)
project(JSONSki)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mavx -mavx2 -mpclmul -std=c++11") 

add_subdirectory(pybind11)
pybind11_add_module(jsonski sources/record_loaders.cpp)

add_library(worker1 STATIC src/QueryProcessor.cpp)
set_target_properties(worker1 PROPERTIES POSITION_INDEPENDENT_CODE ON)

add_library(worker2 STATIC src/RecordLoader.cpp)
set_target_properties(worker2 PROPERTIES POSITION_INDEPENDENT_CODE ON)

add_library(worker3 STATIC src/JSONPathParser.cpp)
set_target_properties(worker3 PROPERTIES POSITION_INDEPENDENT_CODE ON)



#set_target_properties(mymath PROPERTIES POSITION_INDEPENDENT_CODE ON)

# EXAMPLE_VERSION_INFO is defined by setup.py and passed into the C++ code as a
# define (VERSION_INFO) here.
target_compile_definitions(jsonski
                           PRIVATE VERSION_INFO=${EXAMPLE_VERSION_INFO})

target_link_libraries(jsonski PRIVATE worker1)

target_link_libraries(jsonski PRIVATE worker2)

target_link_libraries(jsonski PRIVATE worker3)
