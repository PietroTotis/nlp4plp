wc -l $1 ; grep True $1 | wc -l; grep Timeout $1 | wc -l; grep -v True $1 | grep -v Timeout | tail -5
