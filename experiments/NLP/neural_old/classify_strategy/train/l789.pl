% L789: Find the probability of the event getting at least 1 tail, if four coins are tossed once. ## Solution= 15/16

group(1-15).
size(1-15, 2).

given(exactly(1, 1-15, v(1-15,0))).
given(exactly(1, 1-15, tail)).

take_wr(1-15, 1-17, 4).


probability(atleast(1, 1-17, tail)).

property(outcome(0), [tail, v(1-15,0)]).

