% M63: You randomly draw a marble from a bag of marbles that contains 8 blue marbles, 5 green marbles, and 8 red marbles.  What is the probability that you draw a blue or a red marble? ## Solution= 16/21

group(1-8).

given(exactly(8, 1-8, blue)).
given(exactly(8, 1-8, red)).
given(exactly(5, 1-8, green)).

take(1-8, 1-5, 1).

probability(all(1-5, or(blue, red))).

property(color, [blue, green, red]).

