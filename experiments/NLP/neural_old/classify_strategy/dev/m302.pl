% M302: Anna has the letter tiles below in a bag.  S T A T I S T I C S.  She reached in the bag and pulled out an S.  She then put the tile back in the bag.  If Anna randomly selects a tile from the bag, what is the probability she will select an S again? ## Solution= 3/10

group(5-6).
size(5-6, 10).

given(exactly(1, 5-6, a)).
given(exactly(3, 5-6, t)).
given(exactly(2, 5-6, i)).
given(exactly(1, 5-6, c)).
given(exactly(3, 5-6, s)).

take_wr(5-6, 5-4, 2).
observe(nth(1, 5-4, s)).


probability(nth(2, 5-4, s)).

property(outcome(0), [a, i, s, c, t]).

