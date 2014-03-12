#!/bin/bash

set -e

PWD=`pwd`

#REPO=https://github.com/imazen-discovery
REPO=/z     # Use a local copy for testing.

# clone the repos
git clone $REPO/gd-libgd.git
git clone $REPO/net-gd.git

# Install third party stuff from a tarball.  TODO: switch to using
# chocolatey for this, since it's all there.
pushd /c/
zcat $PWD/files/tools.tar.gz | tar xvf -
popd

