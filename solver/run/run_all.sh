#!/bin/bash

PATH_MODELS="/mnt/D2D6AD4FD6AD349F/Users/pietr/Desktop/PhD/nlp4plp/solver/compressed/*.pl"

for filename in $PATH_MODELS; do
    name=${filename##*/}
    echo "=== Test" ${name%.*} " ==="
    START=$(date +%s.%N)
    SOL=$(sh run.sh $1 $filename)
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    echo "Solution:" $SOL
    echo "Time:" $DIFF
done
