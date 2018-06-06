#!/bin/bash

cd build && make NewCities && cd ../ &&
  gdb -q --statistics -ex run NewCities

