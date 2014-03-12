#!/bin/bash

set -e

PROJROOT=`pwd`

# Build GD
echo "Building LibGD:"
cd gd-libgd/windows/msys
make dist
cd "$PROJROOT"

# Build net-gd
echo "Building net-gd:"
cd net-gd
make dist
cd "$PROJROOT"

echo "Done."




