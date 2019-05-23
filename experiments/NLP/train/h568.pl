% H568: It is known that at noon the sun is hidden by clouds on an average of two days out of every three.  If 5 consecutive days are taken, find the probability of the sun shining at noon on each day. ## Solution= 1/243

group(1-10).

given(exactly(rel(2/3,1-10), 1-10, hide)).

take_wr(1-10, 2-4, 5).


probability(all(2-4, not(hide))).

property(outcome(0), [hide]).

