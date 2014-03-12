#!/bin/bash

set -e

PWD=`pwd`

# Build GD
echo "Building LibGD:"
cd gd-libgd/windows/msys
make dist
cd "$PWD"

# Build net-gd
echo "Building net-gd:"
cd net-gd
make dist
cd "$PWD"

echo "Done."




