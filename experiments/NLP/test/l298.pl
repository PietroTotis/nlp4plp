% L298: Find the probability of a 4 turning up at least once in two tosses of a fair die with six sides, labeled 1, 2, 3, 4, 5 and 6. ## Solution= 11/36

group(1-18).
size(1-18, 6).

given(exactly(1, 1-18, 2)).
given(exactly(1, 1-18, 1)).
given(exactly(1, 1-18, 6)).
given(exactly(1, 1-18, 4)).
given(exactly(1, 1-18, 5)).
given(exactly(1, 1-18, 3)).

take_wr(1-18, 1-14, 2).


probability(atleast(1, 1-14, 4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

