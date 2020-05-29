% H642: Of the 100 people in a certain village, 50 always tell the truth, 30 always lie, and 20 always refuse to answer.  A sample of size 30 is taken with replacement.  Find the probability that there will be exactly 12 liars. ## Solution= .07485

group(1-4).
size(1-4, 100).

given(exactly(50, 1-4, truth)).
given(exactly(30, 1-4, lie)).
given(exactly(20, 1-4, refuse)).

take_wr(1-4, 2-5, 30).

probability(exactly(12, 2-5, lie)).

property(property, [lie, refuse, truth]).

