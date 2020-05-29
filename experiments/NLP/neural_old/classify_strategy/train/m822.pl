% M822: An urn contains 10 white and 12 red chips.  Two chips are drawn at random and, without looking at their colors, are discarded.  What is the probability that a third chip drawn is red? ## Solution= 0.545454545454545

group(1-2).

given(exactly(10, 1-2, white)).
given(exactly(12, 1-2, red)).

take(1-2, 2-2, 3).

probability(nth(3, 2-2, red)).

property(colour, [white, red]).

