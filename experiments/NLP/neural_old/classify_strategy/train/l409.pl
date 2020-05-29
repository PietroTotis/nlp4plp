% L409: A small grocery store had 10 cartons of milk, 2 of which were sour.  If you are going to buy the 6 th carton of milk sold that day at random, find the probability of selecting a carton of sour milk. ## Solution= 1/5

group(1-7).
size(1-7, 10).

given(exactly(2, 1-7, sour)).

take(1-7, 2-10, 1).

probability(all(2-10, sour)).

property(property, [sour]).

