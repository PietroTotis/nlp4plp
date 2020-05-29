#!/bin/sh


# LIST="comb_problems.txt"
# while read LINE; do
#     name=$(basename $LINE)
#     fbname=${name%.*}
#     echo $fbname
#     touch "examples/$fbname.pl"
# done<$LIST

# for f in tmp*.txt
# do
#     split -d -a4 -l2 --additional-suffix=.pl "$f" "${f%.pl}-"
# done

# for f in ./*.pl;
# do
#     echo $f
#     name=$(head -n 1 $f)
#     fbname=${name%.*}
#     echo $fbname
#     mv $f "$fbname.pl"
# done