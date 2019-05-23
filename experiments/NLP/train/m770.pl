% M770: Five percent of the computer chips manufactured by a certain company are defective.  A chip is selected at random from a shipment of chips.  What is the probability that the chip is not defective? ## Solution= 95/100

group(1-6).

given(exactly(rel(5/100, 1-6), 1-6, defective)).

take(1-6, 2-2, 1).

probability(none(2-2, defective)).

property(property, [defective]).

