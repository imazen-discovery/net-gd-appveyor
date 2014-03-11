#!/bin/bash

set -e

PWD=`pwd`

# clone the repos
git clone https://github.com/imazen-discovery/gd-libgd.git
git clone https://github.com/imazen-discovery/net-gd.git

# Install third party stuff from a tarball.  TODO: switch to using
# chocolatey for this, since it's all there.
pushd /c/
zcat $PWD/files/tools.tar.gz | tar xvf -
popd

