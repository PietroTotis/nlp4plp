% L854: A bag contains 5 blue and 2 red marbles.  One marble is drawn at random.  Find the probability that the marble is blue. ## Solution= 0.714285714285714

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 1).

probability(all(2-2, blue)).

property(property, [blue, red]).

