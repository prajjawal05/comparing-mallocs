#!/bin/bash

mallocs=("dh" "ff" "fg" "gd" "hd" "hm" "iso" "je" "lp" "lt" "mesh" "mi" "mng" "pa" "rp" "scudo" "sg"
"sm" "sn" "tbb" "tc" "tcg")
bms=("cfrac" "espresso" "barnes" "redis" "larson-sized" "mstress" "rptest" "gs" "lua")

#lean

for malloc in "${mallocs[@]}"
do
    for bm in "${bms[@]}"
    do
         echo "Running valgrind for malloc: $malloc and bm: $bm"
         log_file="$bm-$malloc-valgrind.txt"
         touch "$log_file"
         sudo valgrind --log-file="$log_file" ../../bench.sh --procs=16 "$malloc" "$bm"
    done
done