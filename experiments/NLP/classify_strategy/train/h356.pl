% H356: A bowl contains 10 jellybeans, four red, one blue and five white.  If you pick three jellybeans from the bowl at random and without replacement, what is the probability that exactly two will be red? ## Solution= 3/10

group(1-5).
size(1-5, 10).

given(exactly(5, 1-5, white)).
given(exactly(4, 1-5, red)).
given(exactly(1, 1-5, blue)).

take(1-5, 2-5, 3).

probability(exactly(2, 2-5, red)).

property(property, [blue, white, red]).

