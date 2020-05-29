% M925: A box of chocolates contains five milk chocolates, five dark chocolates, and five white chocolates.  You randomly select and eat three chocolates.  What is the probability that the first piece is milk chocolate, the second is dark chocolate, and the third is white chocolate? ## Solution= 0.04578754579

group(1-2).

given(exactly(5, 1-2, dark)).
given(exactly(5, 1-2, white)).
given(exactly(5, 1-2, milk)).

take(1-2, 2-7, 3).

probability(and(nth(1, 2-7, milk), and(nth(2, 2-7, dark), nth(3, 2-7, white)))).

property(chocolate_type, [dark, white, milk]).

