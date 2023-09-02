#!/bin/bash

GEN="/mnt/windows/Users/pietr/Desktop/PhD/Experiments/nlp4plp/chatgpt/generated"
for filename in /mnt/windows/Users/pietr/Desktop/PhD/Experiments/nlp4plp/chatgpt/ground/*.pl; do
    name=$(echo "$filename" | cut -f 1 -d '.')
    bname=$(basename -- $filename)
    echo $bname
    python3 eval.py "$GEN/$bname" "$filename" 
done
