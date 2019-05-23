# Ground files
In order to improve the visualization of the .dot graph the predicates are renamed as follows:
bn(take_wr(n,1-9,1-18),[(a, none_of([left-handed])), (b, left-handed)]) --> n=(a,b)


## take_wr
take_wr\(([0-9]+),[0-9a-z\-]+,[0-9a-z\-]+\) --> twr($1)

## bn
bn\([a-z0-9\-]+,\[\(([0-9]+), .+\), \(([0-9]+), .+\)\]\) --> bn($1,$2)

## take_wr_nth
take_wr_nth\(([0-9]+),.*,.*,\[\(1, (.).*\) --> twrn($1,$2)
