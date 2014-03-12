#!/bin/bash

set -e

PROJROOT=`pwd`

echo "Testing LibGD:"
cd gd-libgd/windows/msys
make check > $PROJROOT/gdtests.out

# Search for FAIL: in the output, ignoring xpm failures since we don't
# support xpm and so are expected.
if [ `grep '^FAIL:' $PROJROOT/gdtests.out | grep -v ./xpm | wc -l` != "0" ]; then
    echo "LibGD test failed:"
    grep '^FAIL:' $PROJROOT/gdtests.out
    exit 1
fi
cd "$PROJROOT"
rm gdtests.out
echo "LibGD passed."

echo "Testing net-gd."
cd net-gd/unit-tests
make test
cd "$PROJROOT"

exit 0



