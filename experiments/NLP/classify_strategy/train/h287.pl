% H287: In a single throw of three dice, each of which have 6 sides labelled with 1, 2, 3, 4, 5, and 6, what is the probability of getting a total of at least 5? ## Solution= 0.981481481481482

group(1-7).
size(1-7, 6).

given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, 1)).
given(exactly(1, 1-7, 6)).
given(exactly(1, 1-7, 4)).
given(exactly(1, 1-7, 5)).
given(exactly(1, 1-7, 3)).

take_wr(1-7, 1-4, 3).


probability(aggcmp(1-4,outcome(0),sum,>=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

