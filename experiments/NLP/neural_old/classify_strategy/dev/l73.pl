% L73: There are 7 green, 12 blue, 19 yellow, and 3 red gum balls in the drawer.  What is the range of probability of choosing a different color on 4 successive picks? ## Solution= 0.0472795497185741

group(1-16).

given(exactly(12, 1-16, blue)).
given(exactly(7, 1-16, green)).
given(exactly(19, 1-16, yellow)).
given(exactly(3, 1-16, red)).

take(1-16, 2-15, 4).

probability(all_diff(2-15,color)).

property(color, [blue, green, yellow, red]).

