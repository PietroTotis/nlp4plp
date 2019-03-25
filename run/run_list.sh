#!/bin/sh

LIST="run_list.txt"
FOLDER="../compressed"

#cd to run folder
SCRIPT_PATH=$(dirname "$0")
cd $SCRIPT_PATH

while read LINE; do
    NAME="$LINE.pl"
    echo "=== Test" $LINE " ==="
    START=$(date +%s.%N)
    SOL=$(sh run.sh $1 $NAME)
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    echo "Solution:" $SOL
    echo "Time:" $DIFF
done <$LIST
