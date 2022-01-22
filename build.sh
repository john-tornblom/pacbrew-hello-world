#!/bin/bash

source /opt/pacbrew/ps4/openorbis/ps4vars.sh
openorbis-cmake -S. -Bbuild
make -C build
