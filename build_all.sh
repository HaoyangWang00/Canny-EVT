#!/bin/bash

rm -f ./lib/libEVIT.so
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j6

cd ../example/ROS
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source devel/setup.bash