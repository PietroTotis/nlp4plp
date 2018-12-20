problog -t 60 $1 -a $2 -a $3 -a $4
RET=$?
grep expected $2
exit $RET
