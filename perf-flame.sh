#!/bin/bash

mallocs=("dh" "ff" "fg" "gd" "hd" "hm" "iso" "je" "lp" "lt" "mesh" "mi" "mng" "pa" "rp" "scudo" "sg"
"sm" "sn" "tbb" "tc" "tcg")
bms=("cfrac" "espresso" "barnes" "redis" "larson-sized" "mstress" "rptest" "gs" "lua")

#lean

for malloc in "${mallocs[@]}"
do
    for bm in "${bms[@]}"
    do
         echo "Running flamegraph for malloc: $malloc and bm: $bm"
         log_file="results/$bm-$malloc-flamegraph.data"
         touch "$log_file"
         perf record -F 99 -a -g -- ../../bench.sh --procs=16 "$malloc" "$bm" -o "$log_file"
    done
done