#!/usr/bin/env bash

set -u -e -o pipefail

readonly currentDir=$(
    cd $(dirname $0)
    pwd
)
readonly SCRIPTS_LOCATION=$currentDir
readonly rootDir="${currentDir}"

echo "this is a test" > $rootDir/test.md

git add $rootDir/.
git commit -m "this is a test"
