#!/bin/bash

set -e

sudo apt-get update

. ./ci/travis/lib.sh

build_astyle() {
    . ./ci/travis/astyle.sh
}

build_cppcheck() {
    . ./ci/travis/cppcheck.sh
}

build_${BUILD_TYPE}
