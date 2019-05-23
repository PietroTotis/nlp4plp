% M213: Kira 's mother has a large collection of shoes.  She has 15 pairs of shoes, and 5 of them are sandals.  If Kira 's mother chose a pair of shoes at random, what is the probability that the shoes would be sandals? ## Solution= 1/3

group(2-4).
size(2-4, 15).

given(exactly(5, 2-4, sandal)).

take(2-4, 3-7, 1).

probability(all(3-7, sandal)).

property(shoe_type, [sandal]).

