% L584: A retail establishment accepts either the American Express or the VISA credit card.  A total of 24 percent of its customers carry an American Express card, 61 percent carry a VISA card, and 11 percent carry both cards.  What percentage of its customers carry a credit card that the establishment will accept? ## Solution= 0.74

group(2-8).

given(exactly(rel(11/100, 2-8), 2-8, and(express, visa))).
given(exactly(rel(24/100, 2-8), 2-8, express)).
given(exactly(rel(61/100, 2-8), 2-8, visa)).

take(2-8, 3-2, 1).

probability(all(3-2, or(visa, express))).

property(express, [express]).
property(visa, [visa]).

