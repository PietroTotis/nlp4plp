
OPTIND=1

while getopts "hg" opt; do
    case "$opt" in
    h)
        echo "Parameters:\n-g: generate ground program instead of solving"
        exit 0
        ;;
    g)  problog ground $2 --format pl -a $3 -a $4 -a $5
        RET=$?
        grep expected $2
        exit $RET
        exit 0
        ;;
    esac
done

problog -t 60 $1 -a $2 -a $3 -a $4
RET=$?
grep expected $2
exit $RET
