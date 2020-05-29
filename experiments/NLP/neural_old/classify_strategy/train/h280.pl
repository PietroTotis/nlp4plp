% H280: Suppose that a box contains 5 red balls and 10 blue balls.  7 balls are selected without replacement.  What is the probability that at least 3 red balls will be obtained? ## Solution= 0.42657343

group(1-4).

given(exactly(5, 1-4, red)).
given(exactly(10, 1-4, blue)).

take(1-4, 2-2, 7).

probability(atleast(3, 2-2, red)).

property(property, [blue, red]).

