% L196: Let us look at families with two children.  What is the probability that there is at least one son? ## Solution= 3/4

group(1-8).
size(1-8, 2).

given(exactly(1, 1-8, v(1-8,0))).
given(exactly(1, 1-8, son)).

take_wr(1-8, 1-5, 2).


probability(atleast(1, 1-5, son)).

property(outcome(0), [v(1-8,0), son]).

