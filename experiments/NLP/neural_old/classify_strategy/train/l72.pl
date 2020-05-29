% L72: You have a drawer with 4 green gum balls, 7 blue gum balls, and 11 yellow gum balls in it.  What is the probability that you will pick 3 yellow gum balls in a row? ## Solution= 3/28

group(1-4).

given(exactly(11, 1-4, yellow)).
given(exactly(4, 1-4, green)).
given(exactly(7, 1-4, blue)).

take(1-4, 2-12, 3).

probability(all(2-12, yellow)).

property(color, [blue, green, yellow]).

