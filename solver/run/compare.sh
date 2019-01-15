#!/bin/sh

FILE=""
OPTIONS=

while getopts "hf:" opt; do
    case "$opt" in
    h)
        echo "Parameters:\n-f: run only on file"
        exit 0
        ;;
    f)  FILE=$OPTARG
        for compress in "" "-c"; do
            for push in "" "-p"; do
                for list in "" "-l"; do
                    for filter in "" "-f"; do
                        opt="$compress$push$list$filter"
                        sh run.sh $opt $FILE
                    done
                done
            done
        done
        exit 0
        ;;
    esac
done

shift $((OPTIND-1))
[ "${1:-}" = "--" ] && shift

for compress in ""; do
    for push in "" "-p"; do
        for list in "-l"; do
            for filter in "" "-f"; do
                opt="$compress $push $list $filter"
                echo "----- $opt -----"
                sh run_all.sh $opt
            done
        done
    done
done
