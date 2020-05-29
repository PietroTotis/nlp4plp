% L208: A fair die with six sides, labeled 1, 2, 3, 4, 5 and 6, is thrown twice.  A is the event `` sum of the throws equals 4, '' B is `` at least one of the throws is a 3. ''  Calculate the probability of A given B. ## Solution= 2/11

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 2).
observe(atleast(1, 1-22, 3)).


probability(aggcmp(1-22,outcome(0),sum,=:=,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

