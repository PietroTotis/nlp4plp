% L1044: Consider the random experiment of tossing a coin three times.  Find the probability of obtaining more than one head. ## Solution= 1/2

group(1-8).
size(1-8, 2).

given(exactly(1, 1-8, v(1-8,0))).
given(exactly(1, 1-8, head)).

take_wr(1-8, 1-6, 3).


probability(more_than(1, 1-6, head)).

property(outcome(0), [head, v(1-8,0)]).

