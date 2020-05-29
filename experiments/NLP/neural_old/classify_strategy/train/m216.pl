% M216: You spin a spinner with 3 equal sides, numbered 4, 5, and 6.  What is the probability of landing on number 6? ## Solution= 1/3

group(1-4).
size(1-4, 3).

given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 6)).

take_wr(1-4, 1-2, 1).


probability(all(1-2, 6)).

property(outcome(0), [5, 4, 6]).

