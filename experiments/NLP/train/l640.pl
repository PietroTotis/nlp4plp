% L640: Ten fair 6-sided dice, labeled 1, 2, 3, 4, 5 and 6, are rolled.  What is the probability that at least one 1 appears. ## Solution= 1-(5/6)^10

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-20, 10).


probability(atleast(1, 1-20, 1)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

