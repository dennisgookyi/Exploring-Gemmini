#!/bin/bash

set -ex

source chipyard/env.sh

mkdir -p DIMSresults
#find tiled2 | sort -Vr | parallel -j$(nproc) --halt now,fail=1 simulator-chipyard-GemminiRocketConfig &>> results.txt
find build3/bench/DIMS64_WS/* | sort -Vr | parallel -j$(nproc) --halt now,fail=1 ./simulator-chipyard-CustomGemminiSoCConfig &>> DIMSresults/DIMS64_WS_results.txt
#find build3/bench/DIMS_WS/* | sort -Vr | parallel -j$(nproc) --halt now,fail=1 "echo {};simulator-chipyard-GemminiRocketConfig {}" &>> DIMSresults/DIMS_WS_results.txt
#find build/bench/conv-def-i/* | sort -Vr | parallel -j$(nproc) --halt now,fail=1 "echo {};simulator-chipyard-GemminiRocketConfig {}" &>> results/conv-def-in-dim.txt


