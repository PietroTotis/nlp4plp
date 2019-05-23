% M570: A jar contains 20 red and 35 green marbles.  A marble is drawn at random.  What is the probability that it is not green? ## Solution= 20/55

group(1-2).

given(exactly(35, 1-2, green)).
given(exactly(20, 1-2, red)).

take(1-2, 2-2, 1).

probability(none(2-2, green)).

property(colour, [green, red]).

