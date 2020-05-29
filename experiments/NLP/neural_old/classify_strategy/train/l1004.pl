% L1004: A credit card company offers two types of cards: a basic card and a gold card.  Over the past year, 40 percent of the cards issued have been of the basic type.  Of those getting the basic card, 30 percent enrolled in an identity theft plan, whereas 50 percent of all gold cards holders do so.  If you learn that a randomly selected cardholder has an identity theft plan, how likely is it that he/she has a basic card? ## Solution= 0.28571429

group(2-10).

given(exactly(rel(50/100, 2-10, gold), 2-10, and(gold, theft))).
given(exactly(rel(40/100, 2-10), 2-10, basic)).
given(exactly(rel(60/100, 2-10), 2-10, gold)).
given(exactly(rel(30/100, 2-10, basic), 2-10, and(basic, theft))).

take(2-10, 4-8, 1).
observe(all(4-8, theft)).

probability(all(4-8, basic)).

property(type, [gold, basic]).
property(plan, [theft]).

