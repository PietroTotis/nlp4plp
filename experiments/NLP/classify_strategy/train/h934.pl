% H934: Three manufacturers of floppy disks, A, B, and C, produce 15 percent, 25 percent, and 60 percent of the floppy disks made, respectively.  Manufacturer A produces 5 percent defective disks, manufacturer B produces 7 percent defective disks, and manufacturer C produces 4 percent defective disks.  What proportion of floppy disks are defective? ## Solution= 0.049

group(1-5).

given(exactly(rel(60/100, 1-5), 1-5, c)).
given(exactly(rel(4/100, 1-5, c), 1-5, and(c, defective))).
given(exactly(rel(15/100, 1-5), 1-5, a)).
given(exactly(rel(7/100, 1-5, b), 1-5, and(b, defective))).
given(exactly(rel(5/100, 1-5, a), 1-5, and(a, defective))).
given(exactly(rel(25/100, 1-5), 1-5, b)).

take(1-5, 3-5, 1).

probability(all(3-5, defective)).

property(property, [defective]).
property(manufacturer, [a, c, b]).

