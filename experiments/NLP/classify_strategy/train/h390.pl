% H390: The faces on a regular octahedral die are numbered one, two, three, four, five, six, seven, and eight.  What is the probability of rolling 3 sixes in succession? ## Solution= 1/512

group(1-7).
size(1-7, 8).

given(exactly(1, 1-7, seven)).
given(exactly(1, 1-7, four)).
given(exactly(1, 1-7, six)).
given(exactly(1, 1-7, one)).
given(exactly(1, 1-7, eight)).
given(exactly(1, 1-7, five)).
given(exactly(1, 1-7, three)).
given(exactly(1, 1-7, two)).

take_wr(1-7, 2-6, 3).


probability(all(2-6, six)).

property(outcome(0), [seven, six, three, two, four, five, eight, one]).

