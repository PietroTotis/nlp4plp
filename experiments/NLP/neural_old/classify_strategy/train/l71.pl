% L71: You have a drawer with 4 green gum balls, 7 blue gum balls, and 11 yellow gum balls in it.  If you randomly pick 2 gum balls from the drawer, what is the probability that one will be green and the other will be blue? ## Solution= 0.12121212

group(1-4).

given(exactly(11, 1-4, yellow)).
given(exactly(4, 1-4, green)).
given(exactly(7, 1-4, blue)).

take(1-4, 2-7, 2).

probability(and(exactly(1, 2-7, green), exactly(1, 2-7, blue))).

property(color, [blue, green, yellow]).

