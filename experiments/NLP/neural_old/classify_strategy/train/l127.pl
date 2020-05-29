% L127: A fair coin is tossed seven times.  What is the probability of obtaining five tails? ## Solution= 21/128

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, tails)).

take_wr(1-3, 1-5, 7).


probability(exactly(5, 1-5, tails)).

property(outcome(0), [v(1-3,0), tails]).

