% H101: A new superman MasterCard has been issued to 2000 customers.  Of these customers, 1500 hold a Visa card, 500 hold an American Express card and 40 hold a Visa card and an American Express card.  Find the probability that a customer chosen at random holds a Visa card, given that the customer holds an American Express card. ## Solution= 2/25

group(1-10).
size(1-10, 2000).

given(exactly(40, 1-10, and(american, visa))).
given(exactly(500, 1-10, american)).
given(exactly(1500, 1-10, visa)).

take(1-10, 3-6, 1).
observe(all(3-6, american)).

probability(all(3-6, visa)).

property(american, [american]).
property(visa, [visa]).

