% L603: Four red, 8 blue and 5 green balls are randomly arranged in a line.  What is the probability that the first 5 balls are blue? ## Solution= 2/221

group(balls).

given(exactly(8, balls, blue)).
given(exactly(5, balls, green)).
given(exactly(4, balls, red)).

take(balls, 2-9, 5).

probability(all(2-9, blue)).

property(property, [blue, green, red]).

