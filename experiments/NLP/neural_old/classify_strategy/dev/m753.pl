% M753: A coin is tossed three times in a row, and the outcomes of each toss are observed.  Find the probability of getting tails on the first toss. ## Solution= 0.5

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, tails)).

take_wr(1-2, 1-4, 3).


probability(nth(1, 1-4, tails)).

property(outcome(0), [v(1-2,0), tails]).

