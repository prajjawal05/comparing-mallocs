#!/bin/bash

for filename in perf-data/*; do
    echo "Processing file: $filename"
    rm out.*
    rm perf.data
    cp "$filename" perf.data
    perf script <  "$filename" | ./stackcollapse-perf.pl > out.perf-loaded
    ./flamegraph.pl out.perf-loaded > "results/$filename.svg"
done