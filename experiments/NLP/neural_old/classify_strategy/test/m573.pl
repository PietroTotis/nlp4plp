% M573: A bowl contains 2 yellow, 5 blue, and 7 green marbles.  A marble is drawn at random.  What is the probability that the marble is green or blue? ## Solution= 12/14

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(7, 1-2, green)).
given(exactly(2, 1-2, yellow)).

take(1-2, 2-2, 1).

probability(all(2-2, or(green, blue))).

property(colour, [blue, green, yellow]).

