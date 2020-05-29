% H116: There are 5 yellow, 4 green, and 2 blue marbles in a hat.  You pick 2 marbles from the hat.  Marbles are not returned after they have been drawn.  What is the probability that the first marble and second marble are both blue? ## Solution= (2/11)*(1/10)

group(1-15).

given(exactly(5, 1-15, yellow)).
given(exactly(2, 1-15, blue)).
given(exactly(4, 1-15, green)).

take(1-15, 2-4, 2).

probability(all(2-4, blue)).

property(property, [blue, green, yellow]).

