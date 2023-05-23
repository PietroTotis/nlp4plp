#!/bin/bash
shopt -s nullglob
source /media/windows/Users/pietr/Desktop/PhD/Problogs/problogenv/bin/activate
for filename in /media/windows/Users/pietr/Desktop/PhD/nlp4plp/log_w20210107_131442_434292/*.pl_p; do
    name=$(echo "$filename" | cut -f 1 -d '.')
    echo $(basename -- $filename)
    python3 eval.py "$name.pl_p" "$name.pl_t"
done
