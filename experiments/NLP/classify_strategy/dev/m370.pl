% M370: You roll a pair of dice, one is red and the other is green.  Both dice have six sides, each labeled 1, 2, 3, 4, 5, 6.  What is the probability of rolling a 5 on the red die and an even number on the green one? ## Solution= 1/12

group(1-15).
size(1-15, 6).

given(exactly(1, 1-15, 2)).
given(exactly(1, 1-15, 1)).
given(exactly(1, 1-15, 6)).
given(exactly(1, 1-15, 4)).
given(exactly(1, 1-15, 5)).
given(exactly(1, 1-15, 3)).

group(1-10).
size(1-10, 6).

given(exactly(1, 1-10, 2)).
given(exactly(1, 1-10, 1)).
given(exactly(1, 1-10, 6)).
given(exactly(1, 1-10, 4)).
given(exactly(1, 1-10, 5)).
given(exactly(1, 1-10, 3)).

take_wr(1-15, 3-13, 1).

take_wr(1-10, 3-6, 1).


probability(and(all(3-13, is_even), all(3-6, 5))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).

