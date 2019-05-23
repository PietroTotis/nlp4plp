% M473: A paper bag contains 15 slips of paper.  Eight of them are blue and are numbered 1, 2, 3, 4, 5, 6, 7, 8.  Seven of them are pink and are numbered 1, 2, 3, 4, 5, 6, 7.  What is the probability of drawing a slip of paper with an even number? ## Solution= 7/15

group(1-6).
size(1-6, 15).

given(exactly(2, 1-6, 2)).
given(exactly(2, 1-6, 1)).
given(exactly(2, 1-6, 6)).
given(exactly(2, 1-6, 4)).
given(exactly(2, 1-6, 7)).
given(exactly(2, 1-6, 5)).
given(exactly(2, 1-6, 3)).
given(exactly(1, 1-6, 8)).

take_wr(1-6, 4-6, 1).


probability(aggcmp(4-6,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6, 8]).

