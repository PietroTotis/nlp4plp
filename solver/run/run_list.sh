#!/bin/sh

LIST="run_list.txt"
FOLDER="/mnt/D2D6AD4FD6AD349F/Users/pietr/Desktop/PhD/nlp4plp/solver/compressed"
PROBLOG="/mnt/D2D6AD4FD6AD349F/Users/pietr/Desktop/PhD/problog/problog-cli.py"

while read LINE; do
    NAME="$FOLDER/$LINE.pl"
    echo "=== Test" $NAME " ==="
    START=$(date +%s.%N)
    SOL=$(sh run.sh -e $PROBLOG $1 $NAME)
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    echo "Solution:" $SOL
    echo "Time:" $DIFF
done <$LIST
