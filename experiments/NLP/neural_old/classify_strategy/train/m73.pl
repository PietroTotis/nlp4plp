% M73: An urn contains 6 red marbles and 4 black marbles.  Two marbles are drawn without replacement from the urn.  What is the probability that both of the marbles are black? ## Solution= 2/15

group(1-2).

given(exactly(4, 1-2, black)).
given(exactly(6, 1-2, red)).

take(1-2, 2-2, 2).

probability(all(2-2, black)).

property(colour, [black, red]).

