% M521: A box contains 5 blue, 7 black, and 10 red pens.  If ten pens are chosen at random from the box, what is the probability that they are not red? ## Solution= 0.000102065117544994

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(7, 1-2, black)).
given(exactly(10, 1-2, red)).

take(1-2, 2-3, 10).

probability(none(2-3, red)).

property(colour, [blue, black, red]).

