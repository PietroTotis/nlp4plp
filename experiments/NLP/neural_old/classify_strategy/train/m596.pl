% M596: A bag contains 5 green beads and 4 red beads.  A bead is taken from the bag, its colour noted, and it is then replaced.  A second bead is then taken from the bag.  What is the probability that the two beads are different colours? ## Solution= 40/81

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(4, 1-2, red)).

take_wr(1-2, 2-2, 2).

probability(all_diff(2-2,colour)).

property(colour, [green, red]).

