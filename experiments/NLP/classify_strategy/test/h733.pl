% H733: From a box containing 6 black balls and 4 green balls, 3 balls are drawn in succession, each ball being replaced in the box before the next draw is made.  What is the probability that each color is represented? ## Solution= 18/25

group(1-3).

given(exactly(4, 1-3, green)).
given(exactly(6, 1-3, black)).

take_wr(1-3, 1-14, 3).

probability(and(atleast(1, 1-14, black), atleast(1, 1-14, green))).

property(color, [black, green]).
property(property, [color]).

