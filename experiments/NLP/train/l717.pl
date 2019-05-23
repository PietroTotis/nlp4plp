% L717: During a sale at a men 's store, 16 white sweaters, 3 red sweaters, 9 blue sweaters, and 7 yellow sweaters were purchased.  If a customer is selected at random, find the probability that he bought a red, a blue, or a yellow sweater. ## Solution= 19/35

group(sweaters).

given(exactly(16, sweaters, white)).
given(exactly(9, sweaters, blue)).
given(exactly(7, sweaters, yellow)).
given(exactly(3, sweaters, red)).

take(sweaters, 2-3, 1).

probability(all(2-3, or(or(red, blue), yellow))).

property(property, [blue, white, red, yellow]).

