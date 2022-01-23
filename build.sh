#!/usr/bin/env bash

set -e

cmake -S. -Bbuild -DCMAKE_TOOLCHAIN_FILE=/opt/pacbrew/ps4/openorbis/cmake/ps4.cmake
cmake --build build
ls build/*.pkg
