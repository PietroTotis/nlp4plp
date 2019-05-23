% L459: Debra has a box containing 7 green gum balls and 3 blue gum balls.  She reaches into the box and, without looking, pick s a green gum ball.  She keeps it and reaches into the box again.  What is the probability that she will draw a blue gum ball? ## Solution= 1/3

group(1-4).

group(rest(2-16)).

given(exactly(7, 1-4, green)).
given(exactly(3, 1-4, blue)).

take(rest(2-16), 4-12, 1).
take(1-4, 2-16, 1).
observe(all(2-16, green)).

probability(all(4-12, blue)).

property(property, [blue, green]).

