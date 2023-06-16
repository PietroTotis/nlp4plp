#!/bin/sh

# $1 is the model, this has to be passed to run_a_solver as first argument to extract solution
# additional two arguments in arbitrary order, they need to define the multiset type parameters and early-failure settings
# available options are
# param_X.pl (full details on root sets) and param_X_compressed.pl (abstracting irrelevant details) for X either ms (histogram) or list (plain enumeration)
# setting_plain.pl for plain generate and test, setting_push.pl for pushing query constraints into generation, setting_filter.pl for filtering nodes on evidence, setting_push_filter.pl for both
#sh run_a_solver.sh solver.pl $1 param_ms_compressed.pl setting_push_filter.pl

# PATH_TO_OLD="/mnt/windows/Users/pietr/Desktop/PhD/nlp4plp/nlp4plp_old/code/solver/run_meta_prob.sh"
SOLVER_PATH="../solver/solver.pl"
# SOLVER_PATH="/mnt/windows/Users/pietr/Desktop/PhD/nlp4plp/nlp4plp_old/code/solver/run_solver.pl"
DATA="/mnt/windows/Users/pietr/Desktop/PhD/nlp4plp/nlp4plp_old/code/solver/examples"
# DATA="../examples"

# A POSIX variable
OPTIND=1

#Variable initializations:
SOLVER=$SOLVER_PATH
DATA_STR="ms"
COMPRESSED=""
PUSH=""
FILTER=""
GROUND=""
PROBLOG="problog" #"python3 /mnt/windows/Users/pietr/Desktop/PhD/Problogs/problog/problog-cli.py"

while getopts "hcde:flopg" opt; do
    case "$opt" in
    h)
        echo "Parameters:\n-c: use compressed versions of lists/multi sets\n-d: ground to dot format\n-e: provide custom problog executable\n-f: filter nodes on evidence\n-g: generate ground program\n-l: use lists instead of multi-sets (histograms)\n-p: push query constraints into generation"
        exit 0
        ;;
    c)  COMPRESSED="_compressed"
        ;;
    d)  GROUND="-d"
        ;;
    e)  PROBLOG=$OPTARG
        ;;
    f)  FILTER="_filter"
        ;;
    g)  GROUND="-g"
        ;;
    l)  DATA_STR="list"
        ;;
    o)  SOLVER=$PATH_TO_OLD
        ;;
    p)  PUSH="_push"
        ;;
    esac
done

shift $((OPTIND-1))
[ "${1:-}" = "--" ] && shift

PARAM="param_$DATA_STR$COMPRESSED.pl"
SETTING="setting$PUSH$FILTER.pl"

# #cd to run folder
SCRIPT_PATH=$(dirname "$0")
cd $SCRIPT_PATH

# $PATH_TO_OLD "$DATA/$1"

# echo "$DATA/$1"

# $PROBLOG -t 120 $SOLVER_PATH -a "$DATA/$1"
# RET=$?
# grep expected "$DATA/$1"
# exit $RET

if [ "$GROUND" = "" ]; then
    bash run_a_solver.sh -e $PROBLOG $SOLVER "$DATA/$1" $PARAM $SETTING
else
    bash run_a_solver.sh -e $PROBLOG $GROUND $SOLVER "$DATA/$1" $PARAM $SETTING
fi
