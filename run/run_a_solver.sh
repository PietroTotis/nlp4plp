#!/bin/bash

OPTIND=1
FORMAT=""
while getopts "hde:gl" opt; do
    case "$opt" in
    h)  echo "Parameters:\n-d: same as -g but use dot format instead of Problog\n-e: provide custom Problog executable\n-g: generate ground program instead of solving"
        exit 0
        ;;
    d)  FORMAT="dot"
        ;;
    e)  PROBLOG=$OPTARG
        ;;
    l)  LEGACY="yes"
        ;;
    g)  FORMAT="pl"
        ;;
    esac
done
# PROBLOG="python3 /mnt/windows/Users/pietr/Desktop/PhD/Problogs/problog/problog-cli.py"
shift $((OPTIND-1))
[ "${1:-}" = "--" ] && shift
echo $2
if [ "$FORMAT" = "" ]; then
    if [ "$LEGACY" = "yes" ]; then
        $PROBLOG -t 120 $1 -a $2 #-a $3 -a $4
    else
        $PROBLOG -t 120 $1 -a $2 -a $3 -a $4
    fi
    RET=$?
    grep expected $1
    exit $RET
else
    timeout 20 $PROBLOG ground $1 --format $FORMAT -a $2 -a $3 -a $4
fi
