% L758: A bag contains 28 marbles.  Half of the marbles are red.  Half of the non-red marbles are white and the rest are blue.  Todd chose a white marble at random and kept it.  What is the probability that when Hosea now draws a marble it will also be white? ## Solution= 2/9

group(rest(4-5)).

group(1-2).
size(1-2, 28).

given(exactly(rel(1/4, 1-2), 1-2, blue)).
given(exactly(rel(1/4, 1-2), 1-2, white)).
given(exactly(rel(1/2, 1-2), 1-2, red)).

take(rest(4-5), 5-11, 1).
take(1-2, 4-5, 1).
observe(all(4-5, white)).

probability(all(5-11, white)).

property(property, [blue, white, red]).

