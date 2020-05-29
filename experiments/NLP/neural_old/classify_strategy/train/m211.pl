% M211: Diana 's father has a large collection of ties.  He has 18 ties, and 6 of them are paisley.  If Diana 's father chose a tie at random, what is the probability that the tie would be paisley? ## Solution= 1/3

group(2-4).
size(2-4, 18).

given(exactly(6, 2-4, paisley)).

take(2-4, 3-7, 1).

probability(all(3-7, paisley)).

property(property, [paisley]).

