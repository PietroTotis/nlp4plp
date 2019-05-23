% L1074: Consider a jar with three black marbles and one red marble.  For the experiment of drawing two marbles with replacement, what is the probability of drawing a black marble and then a red marble in that order?  Assume that the balls are equally likely to be drawn. ## Solution= 3/16

group(1-3).

given(exactly(1, 1-3, red)).
given(exactly(3, 1-3, black)).

take_wr(1-3, 2-7, 2).

probability(and(nth(1, 2-7, black), nth(2, 2-7, red))).

property(property, [black, red]).

