% L593: If a die with 6 sides, labeled 1, 2, 3, 4, 5 and 6, is rolled 4 times, what is the probability that 6 comes up at least once? ## Solution= 0.51774691

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 4).


probability(atleast(1, 1-22, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

