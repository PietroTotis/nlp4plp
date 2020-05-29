% H743: In testing a certain kind of truck tire over a rugged terrain, it is found that 25 percent of the trucks fail to complete the test run without a blowout.  Of the next 15 trucks tested, find the probability that from 3 to 6 have blowouts. ## Solution= .7073

group(1-22).

given(exactly(rel(25/100,1-22), 1-22, fail)).

take_wr(1-22, 2-6, 15).


probability(and(atmost(6, 2-6, fail), atleast(3, 2-6, fail))).

property(outcome(0), [fail]).

