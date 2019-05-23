% L902: Ishmael writes a computer program that produces at random one of these digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.  What is the probability that the program produces a number less than 7? ## Solution= 0.7

group(2-10).
size(2-10, 10).

given(exactly(1, 2-10, 9)).
given(exactly(1, 2-10, 2)).
given(exactly(1, 2-10, 0)).
given(exactly(1, 2-10, 1)).
given(exactly(1, 2-10, 6)).
given(exactly(1, 2-10, 4)).
given(exactly(1, 2-10, 7)).
given(exactly(1, 2-10, 5)).
given(exactly(1, 2-10, 3)).
given(exactly(1, 2-10, 8)).

take_wr(2-10, 2-8, 1).


probability(aggcmp(2-8,outcome(0),sum,<,7)).

property(outcome(0), [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]).

