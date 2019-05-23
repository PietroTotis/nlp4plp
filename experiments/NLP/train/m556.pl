% M556: You flip a coin three times.  What is the probability of getting heads on at least one flip? ## Solution= 0.875

group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, head)).

take_wr(1-4, 1-2, 3).


probability(atleast(1, 1-2, head)).

property(outcome(0), [v(1-4,0), head]).

