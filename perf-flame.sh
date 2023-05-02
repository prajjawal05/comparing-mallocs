#!/bin/bash

# mallocs=("dh" "ff" "fg" "gd" "hd" "hm" "iso" "je" "lf" "lp" "lt" "mesh" "mi" "mng" "nomesh" "pa" "rp" "sc" "scudo" "sg" "sm" "sn" "tbb" "tc" "tcg")
# bms=("cfrac" "espresso" "barnes" "redis" "larson-sized" "mstress" "rptest" "gs" "lua")
mallocs=("hd" "je" "sm" "tcg" "sys")
bms=("cfrac" "espresso" "gs" "larson-sized" "lua" "redis")
#lean

for malloc in "${mallocs[@]}"
do
    for bm in "${bms[@]}"
    do
         echo "Running flamegraph perf record for malloc: $malloc and bm: $bm"
         log_file="results/$bm-$malloc-flamegraph.perf"
         sudo perf record -F 99 -a -g -- ../../bench.sh --procs=16 "$malloc" "$bm"
         mv perf.data "$log_file"
    done
done