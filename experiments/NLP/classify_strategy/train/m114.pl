% M114: 20 customers are eating dinner at a local restaurant.  The restaurant accepts cash or credit as forms of payment.  Of the 20 customers, 4 have enough cash to pay for their meal, 16 have a credit card, and 3 have enough cash and a credit card.  What is the probability that a customer has enough cash or a credit card? ## Solution= 17/20

group(1-2).
size(1-2, 20).

given(exactly(3, 1-2, and(card, cash))).
given(exactly(16, 1-2, card)).
given(exactly(4, 1-2, cash)).

take(1-2, 4-7, 1).

probability(all(4-7, or(cash, card))).

property(cash, [cash]).
property(card, [card]).

