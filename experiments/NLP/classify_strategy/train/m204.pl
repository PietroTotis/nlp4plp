% M204: A ball is drawn at random from an urn containing colored balls.  The balls can be either red or blue - no other colors are possible -.  The probability of drawing a blue ball is 1/3.  What is the probability of drawing a red ball? ## Solution= 2/3

group(1-2).

given(exactly(rel(1/3,1-2), 1-2, blue)).
given(exactly(u, 1-2, red)).

take_wr(1-2, 4-6, 1).


probability(all(4-6, red)).

property(outcome(0), [blue, red]).

