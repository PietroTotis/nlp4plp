% H635: A coin whose faces are marked 2 and 3 is thrown 5 times.  What is the chance of obtaining a total of 12? ## Solution= 5/16

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-11, 5).


probability(aggcmp(1-11,outcome(0),sum,=:=,12)).

property(outcome(0), [3, 2]).

