#!bin/bash
for filename in ../examples/*.pl; do
    echo "$filename"
    python grammar.py $filename
done

