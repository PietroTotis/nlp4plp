% M65: You randomly draw a marble from a bag of marbles that contains 7 blue marbles, 2 green marbles, and 1 red marble.  What is the probability that you do not draw a blue marble? ## Solution= 3/10

group(1-8).

given(exactly(7, 1-8, blue)).
given(exactly(1, 1-8, red)).
given(exactly(2, 1-8, green)).

take(1-8, 1-5, 1).

probability(none(1-5, blue)).

property(color, [blue, green, red]).

