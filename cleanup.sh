#!/bin/bash

# Reset the build directory to its original state.  This is not needed
# by AppVeyor; it's here for when you want to debug the build process
# on a Windows system.

set -e

# Sanity checks
if [ ! -f appveyor.yml ]; then
    echo "cleanup.sh must be run in the project root."
    exit 1
fi

[ -d gd-libgd ] && rm -rf gd-libgd
[ -d net-gd ] && rm -rf net-gd


