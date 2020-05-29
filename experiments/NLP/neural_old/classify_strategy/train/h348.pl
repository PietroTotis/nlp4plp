% H348: A bag contains 4 white, 5 red, and 6 blue balls.  Three balls are drawn at random from the bag.  What is the probability that all of them are red? ## Solution= 2/91

group(1-2).

given(exactly(6, 1-2, blue)).
given(exactly(4, 1-2, white)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 3).

probability(all(2-2, red)).

property(property, [blue, white, red]).

