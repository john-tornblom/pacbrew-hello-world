cmake_minimum_required(VERSION 3.0)

project(TestSDL2)
find_package(SDL2 REQUIRED COMPONENTS SDL2::SDL2)

add_executable(TestSDL2 main.cpp)
target_link_libraries(TestSDL2 SDL2::SDL2)
include_directories(${SDL2_INCLUDE_DIRS})

if(PS4)
  add_self(TestSDL2)
  add_pkg(TestSDL2
    ${PROJECT_SOURCE_DIR}/packaging
    "BREW01001" "Test SDL2" "01.00")
endif()
