#!/bin/bash
for filename in ../../nlp4plp_old/code/solver/examples/*.pl; do
    echo "$filename"
    python eval.py $filename $filename
done
