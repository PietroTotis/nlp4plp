% H374: A bag contains 12 red marbles and 6 blue marbles.  Two marbles are selected at random and without replacement.  What is the probability that one marble is red and one is blue? ## Solution= 8/17

group(1-2).

given(exactly(6, 1-2, blue)).
given(exactly(12, 1-2, red)).

take(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, red), exactly(1, 2-2, blue))).

property(property, [blue, red]).

