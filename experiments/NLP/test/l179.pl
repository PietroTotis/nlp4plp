% L179: The odds are two to one that, when A and B play tennis, A wins.  Suppose that A and B play two matches.  What is the probability that A wins at least one match? ## Solution= 8/9

group(1-14).

given(exactly(rel(2/3,1-14), 1-14, a)).
given(exactly(rel(1/3,1-14), 1-14, b)).

take_wr(1-14, 3-7, 2).


probability(atleast(1, 3-7, a)).

property(outcome(0), [a, b]).

