% L360: Blindfolded selecting two marbles from a bowl that contains two black, two white and two blue marbles all of which feel the same, find the probability that the two marbles are the same color. ## Solution= 0.2

group(1-7).

given(exactly(2, 1-7, black)).
given(exactly(2, 1-7, white)).
given(exactly(2, 1-7, blue)).

take(1-7, 1-4, 2).

probability(all_same(1-4,color)).

property(color, [blue, white, black]).

