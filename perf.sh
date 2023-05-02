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
	    echo "Running perf stat for malloc: $malloc and bm: $bm"
        # perf stat -o "results/$bm-$malloc-perf.txt" -e dTLB-load-misses,dTLB-store-misses ../../bench.sh --procs=16 "$malloc" "$bm" > "results/$bm-$malloc-result"
        perf stat -o "results/$bm-$malloc-perf.txt" ../../bench.sh --procs=16 "$malloc" "$bm" > "results/$bm-$malloc-result"
    done
done