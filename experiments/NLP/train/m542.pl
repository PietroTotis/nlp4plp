% M542: A number from 5 to 20 is chosen at random.  5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20.  What is the probability that the number chosen is not even? ## Solution= 1/2

group(1-2).
size(1-2, 16).

given(exactly(1, 1-2, 9)).
given(exactly(1, 1-2, 14)).
given(exactly(1, 1-2, 17)).
given(exactly(1, 1-2, 15)).
given(exactly(1, 1-2, 13)).
given(exactly(1, 1-2, 18)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 19)).
given(exactly(1, 1-2, 7)).
given(exactly(1, 1-2, 12)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 10)).
given(exactly(1, 1-2, 11)).
given(exactly(1, 1-2, 20)).
given(exactly(1, 1-2, 8)).
given(exactly(1, 1-2, 16)).

take_wr(1-2, 1-8, 1).


probability(aggcmp(1-8,outcome(0),sum,is_odd)).

property(outcome(0), [11, 10, 13, 12, 15, 14, 17, 16, 19, 18, 20, 5, 7, 6, 9, 8]).

