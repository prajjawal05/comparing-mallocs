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
         echo "Running valgrind for malloc: $malloc and bm: $bm"
         log_file="results/$bm-$malloc-valgrind.txt"
         touch "$log_file"
         sudo ../../bench.sh --procs=16 "$malloc" "$bm" # requires change in run_test, add valgrind --leak-check=no --log-file=valgrind.txt
         mv valgrind.txt "$log_file"
         # run using nohup ./myscript.sh > output.log 2>&1 &
    done
done