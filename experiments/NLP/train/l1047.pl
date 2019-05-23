% L1047: What is the probability of rolling a 3 or a 4 with a fair 6-sided die, labeled 1, 2, 3, 4, 5 and 6? ## Solution= 1/3

group(1-16).
size(1-16, 6).

given(exactly(1, 1-16, 2)).
given(exactly(1, 1-16, 1)).
given(exactly(1, 1-16, 6)).
given(exactly(1, 1-16, 4)).
given(exactly(1, 1-16, 5)).
given(exactly(1, 1-16, 3)).

take_wr(1-16, 1-6, 1).


probability(all(1-6, or(3, 4))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

