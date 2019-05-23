% L679: A coin is tossed 5 times.  Find the probability of getting at least one tail. ## Solution= 31/32

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, tail)).

take_wr(1-2, 1-4, 5).


probability(atleast(1, 1-4, tail)).

property(outcome(0), [tail, v(1-2,0)]).

