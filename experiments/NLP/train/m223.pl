% M223: What is the probability of throwing a 5 or a 6 in one roll of a six-sided die, labeled 1, 2, 3, 4, 5 and 6? ## Solution= 1/3

group(1-18).
size(1-18, 6).

given(exactly(1, 1-18, 2)).
given(exactly(1, 1-18, 1)).
given(exactly(1, 1-18, 6)).
given(exactly(1, 1-18, 4)).
given(exactly(1, 1-18, 5)).
given(exactly(1, 1-18, 3)).

take_wr(1-18, 1-14, 1).


probability(all(1-14, or(5, 6))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

