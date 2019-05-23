% M262: A bag contains 2 red beads and 3 black beads.  Two beads are taken from the bag and not replaced.  What 's the probability that both beads are the same colour? ## Solution= 0.4

group(1-2).

given(exactly(3, 1-2, black)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 2).

probability(all_same(2-2,colour)).

property(colour, [black, red]).

