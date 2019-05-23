% L460: A paper bag contains 2 red balls, 1 green ball, and 2 yellow balls.  If Pat takes one ball out of the bag without looking, what is the probability that it is red? ## Solution= 2/5

group(1-3).

given(exactly(2, 1-3, yellow)).
given(exactly(2, 1-3, red)).
given(exactly(1, 1-3, green)).

take(1-3, 2-5, 1).

probability(all(2-5, red)).

property(property, [green, red, yellow]).

