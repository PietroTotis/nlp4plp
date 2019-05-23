% L416: In a simultaneous throw of two coins, what is the probability of getting at least one head? ## Solution= 3/4

group(1-7).
size(1-7, 2).

given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, head)).

take_wr(1-7, 1-4, 2).


probability(atleast(1, 1-4, head)).

property(outcome(0), [v(1-7,0), head]).

