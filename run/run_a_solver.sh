#!/bin/bash

OPTIND=1
PROBLOG="problog"
FORMAT=""
while getopts "hde:g" opt; do
    case "$opt" in
    h)  echo "Parameters:\n-d: same as -g but use dot format instead of Problog\n-e: provide custom Problog executable\n-g: generate ground program instead of solving"
        exit 0
        ;;
    d)  FORMAT="dot"
        ;;
    e)  PROBLOG=$OPTARG
        ;;
    g)  FORMAT="pl"
        ;;
    esac
done

shift $((OPTIND-1))
[ "${1:-}" = "--" ] && shift

if [ "$FORMAT" = "" ]; then
    $PROBLOG -t 60 $1 -a $2 -a $3 -a $4
    RET=$?
    grep expected $2
    exit $RET
else
    timeout 20 $PROBLOG ground $1 --format $FORMAT -a $2 -a $3 -a $4
fi
