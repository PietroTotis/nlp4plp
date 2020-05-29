#!/bin/sh

# LIST="comb_problems"
# while read LINE; do
#     text=$(jq '.text' $LINE)
#     echo $text >> "c.txt"
# done<$LIST

LIST="comb_problems.txt"
while read LINE; do
    text=$(jq '.solution' $LINE)
    echo $text >> "csol.txt"
done<$LIST