#!/bin/bash

# $1 can be any argument of run.sh (see run.sh -h) 

re='^[[:space:]]*[0-9]+([.][0-9]+)?[[:space:]]*$'

#cd to run folder
SCRIPT_PATH=$(dirname "$0")
cd $SCRIPT_PATH

PATH_MODELS="/mnt/windows/Users/pietr/Desktop/PhD/Experiments/nlp4plp/chatgpt/generated/*"
PATH_TXT="/mnt/windows/Users/pietr/Desktop/PhD/Experiments/nlp4plp/chatgpt/questions"
PATH_GT="/mnt/windows/Users/pietr/Desktop/PhD/Experiments/nlp4plp/chatgpt/ground"

for FILENAME in $PATH_MODELS; do
    NAME=${FILENAME##*/}
    GEN_NAME="generated/$NAME"
    GT_NAME="ground/$NAME"
    TXT_NAME="$PATH_TXT/${NAME%.*}.txt"
    echo "=== Test" ${NAME%.*} " ==="
    cat $TXT_NAME
    START=$(date +%s.%N)
    SOL=$(sh run.sh -s $1 $GEN_NAME)
    END=$(date +%s.%N)
    DIFF=$(echo "$END - $START" | bc)
    GT_SOL=$(sh run.sh -s $1 $GT_NAME)
    echo "[ Time:" $DIFF "]"
    SSOL=${SOL##*:}
    SGT_SOL=${GT_SOL##*:}
    if ! [[ $SSOL =~ $re ]] ; then
        SSOL=$SOL
    fi
    if ! [[ $SGT_SOL =~ $re ]] ; then
        SGT_SOL=$GT_SOL
    fi
    echo "Solution:" $SSOL
    echo "GT solution:" $SGT_SOL
    if [[ "$SSOL" == "$SGT_SOL" ]]
    then
        echo "OK"
    else
        echo "WRONG"
    fi
done
