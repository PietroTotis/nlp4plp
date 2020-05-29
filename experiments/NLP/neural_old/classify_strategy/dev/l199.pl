% L199: An urn contains 7 red and 5 blue balls, which we take out one by one.  What is the probability that the first ball is blue? ## Solution= 0.416666666666667

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(7, 1-2, red)).

take(1-2, 2-8, 1).

probability(all(2-8, blue)).

property(property, [blue, red]).

