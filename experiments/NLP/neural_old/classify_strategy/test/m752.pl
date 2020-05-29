% M752: A coin is tossed three times in a row, and the outcomes of each toss are observed.  Find the probability of getting two or more heads. ## Solution= 0.5

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 3).


probability(atleast(2, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

