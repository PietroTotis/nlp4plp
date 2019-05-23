% M751: A coin is tossed three times in a row, and the outcomes of each toss are observed.  Find the probability of getting three heads. ## Solution= 0.125

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 3).


probability(exactly(3, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

