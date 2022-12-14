#!/bin/bash
set -euo pipefail

tools/deploy.sh ci_test
mkdir ci_test/config
mkdir ci_test/data

#test config
cp tools/ci/ci_config.txt ci_test/config/config.txt

cd ci_test
DreamDaemon atombomb.dmb -close -trusted -verbose -params "log-directory=ci"

cd ..

mkdir -p data/screenshots_new
cp -r ci_test/data/screenshots_new data/screenshots_new
