% M264: A bag contains 2 red beads and 3 black beads.  Two beads are taken from the bag and not replaced.  What 's the probability of obtaining at least one red bead? ## Solution= 0.7

group(1-2).

given(exactly(3, 1-2, black)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 2).

probability(atleast(1, 2-2, red)).

property(colour, [black, red]).

