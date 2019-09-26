#!/bin/bash
for filename in ../../nlp4plp_old/code/solver/examples/*.pl; do
    echo "$filename"
    name="$(basename -- $filename)"
    python convert.py $filename > ../converted/$name
done
