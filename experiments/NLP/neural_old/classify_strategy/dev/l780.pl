% L780: A bag contains 5 red and 8 blue balls.  What is the probability that two balls drawn are red and blue? ## Solution= 20/39

group(1-2).

given(exactly(8, 1-2, blue)).
given(exactly(5, 1-2, red)).

take(1-2, 2-7, 2).

probability(and(exactly(1, 2-7, red), exactly(1, 2-7, blue))).

property(property, [blue, red]).

