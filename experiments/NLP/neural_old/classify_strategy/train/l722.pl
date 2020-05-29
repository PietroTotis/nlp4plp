% L722: A box of candy contains 6 chocolate-covered cherries, 3 peppermints, 2 caramels, and 2 strawberry creams.  If a piece of candy is selected, find the probability of getting a caramel or a peppermint. ## Solution= 5/13

group(1-2).

given(exactly(2, 1-2, cream)).
given(exactly(6, 1-2, cherry)).
given(exactly(2, 1-2, caramel)).
given(exactly(3, 1-2, peppermint)).

take(1-2, 2-3, 1).

probability(all(2-3, or(caramel, peppermint))).

property(property, [cherry, caramel, peppermint, cream]).

