% L849: Bag I contains 3 red and 4 black balls and Bag II contains 4 red and 5 black balls.  One ball is transferred from Bag I to Bag II and then a ball is drawn from Bag II.  The ball so drawn is found to be red in colour.  Find the probability that the transferred ball is black. ## Solution= 16/31

group(1-1).

group(2-9).

group(1-11).

given(exactly(3, 1-1, red)).
given(exactly(5, 1-11, black)).
given(exactly(4, 1-11, red)).
given(exactly(4, 1-1, black)).

take(2-9, 2-14, 1).
observe(all(2-14, red)).
take(1-1, 2-2, 1).

union(2-9, [1-11, 2-2]).
probability(all(2-2, black)).

property(color, [black, red]).

