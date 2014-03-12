#!/bin/bash

set -e

PROJROOT=`pwd`

#REPO=https://github.com/imazen-discovery
REPO=/z/repos     # Use a local copy for testing.

# clone the repos
git clone $REPO/gd-libgd.git
git clone $REPO/net-gd.git

# Install third party stuff from a tarball.  TODO: switch to using
# chocolatey for this, since it's all there.
cd /c/
zcat $PROJROOT/files/tools.tar.gz | tar xf -
cd $PROJROOT

