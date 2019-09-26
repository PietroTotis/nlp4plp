#!/bin/bash

# $1 can be any argument of run.sh (see run.sh -h) 

#cd to run folder
SCRIPT_PATH=$(dirname "$0")
cd $SCRIPT_PATH

PATH_MODELS="../converted/*.pl"

for FILENAME in $PATH_MODELS; do
    NAME=${FILENAME##*/}
    echo "=== Test" ${NAME%.*} " ==="
    START=$(date +%s.%N)
    SOL=$(sh run.sh $1 $NAME)
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    echo "Solution:" $SOL
    echo "Time:" $DIFF
done
