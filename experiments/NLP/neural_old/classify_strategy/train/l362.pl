% L362:  If a pair of dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, is tossed, find the probabilities of the following events.  Two even numbers showing. ## Solution= 1/4

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-24, 2).


probability(exactly(2, 1-24, is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).