% H553: An urn contains three white balls, 4 red balls and 5 black balls.  Three balls are drawn at random.  what is the probability that they are the same colour? ## Solution= 3/44

group(1-2).

given(exactly(3, 1-2, white)).
given(exactly(5, 1-2, black)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 3).

probability(all_same(2-2,color)).

property(color, [white, black, red]).

