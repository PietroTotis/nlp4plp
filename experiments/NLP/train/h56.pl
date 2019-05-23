% H56: There are 14 marbles in a bag: 3 Red, 5 Blue and 6 White.  If one marble is picked at random ; what is the probability to pick a Red marble? ## Solution= 3/14

group(1-7).
size(1-7, 14).

given(exactly(6, 1-7, white)).
given(exactly(5, 1-7, blue)).
given(exactly(3, 1-7, red)).

take(1-7, 2-3, 1).

probability(all(2-3, red)).

property(property, [blue, white, red]).

