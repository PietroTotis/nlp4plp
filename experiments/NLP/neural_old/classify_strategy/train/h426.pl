% H426: A man takes a step forward with probability 0.4 and backward with probability 0.6.  Find the probability that at the end of eleven steps he is one step away from the starting point. ## Solution= (C(11,5))*((6^5)/(5^10))

group(1-5).

given(exactly(rel(.6,1-5), 1-5, backward)).
given(exactly(rel(.4,1-5), 1-5, forward)).

take_wr(1-5, 1-2, 11).


probability(or(and(exactly(5, 1-2, forward), exactly(6, 1-2, backward)), and(exactly(6, 1-2, forward), exactly(5, 1-2, backward)))).

property(outcome(0), [forward, backward]).

