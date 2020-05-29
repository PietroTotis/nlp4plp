% L829: Two groups are competing for the position on the board of directors of a corporation.  The probabilities that the first and the second groups will win are 0.6 and 0.4 respectively.  Further, if the first group wins, the probability of introducing a new product is 0.7 and the corresponding probability is 0.3 if the second group wins.  Find the probability that the new product was introduced by the second group. ## Solution= 2/9

group(1-2).
size(1-2, 2).

given(exactly(rel(0.7, 1-2, first), 1-2, and(first, product))).
given(exactly(rel(0.3, 1-2, second), 1-2, and(product, second))).
given(exactly(rel(0.4, 1-2), 1-2, second)).
given(exactly(rel(0.6, 1-2), 1-2, first)).

take(1-2, 4-7, 1).
observe(all(4-7, product)).

probability(all(4-7, second)).

property(product, [product]).
property(group, [second, first]).

