% L596: A customer visiting the suit department of a certain store will purchase a suit with probability .22, a shirt with probability .30, and a tie with probability .28.  The customer will purchase both a suit and a shirt with probability .11, both a suit and a tie with probability .14, and both a shirt and a tie with probability .10.  A customer will purchase all 3 items with probability .06.  What is the probability that a customer purchases none of these items? ## Solution= 0.49

group(1-10).

given(exactly(rel(.28, 1-10), 1-10, tie)).
given(exactly(rel(.30, 1-10), 1-10, shirt)).
given(exactly(rel(.14, 1-10), 1-10, and(suit, tie))).
given(exactly(rel(.06, 1-10), 1-10, and(shirt, and(suit, tie)))).
given(exactly(rel(.22, 1-10), 1-10, suit)).
given(exactly(rel(.11, 1-10), 1-10, and(shirt, suit))).
given(exactly(rel(.10, 1-10), 1-10, and(shirt, tie))).

take(1-10, 4-4, 1).

probability(and(none(4-4, suit), and(none(4-4, shirt), none(4-4, tie)))).

property(tie, [tie]).
property(shirt, [shirt]).
property(suit, [suit]).

