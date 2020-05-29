% H309: A drawer holds 4 red hats and 4 blue hats.  What is the probability of getting exactly three red hats or exactly three blue hats when taking out 4 hats randomly out of the drawer and returning each hat before taking out the next one? ## Solution= 1/2

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(4, 1-2, red)).

take_wr(1-2, 2-20, 4).

probability(or(exactly(3, 2-20, red), exactly(3, 2-20, blue))).

property(property, [blue, red]).

