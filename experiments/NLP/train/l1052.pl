% L1052: A box of clothes contains 15 shirts and 10 pants.  Three items are drawn from the box without replacement.  What is the probability that all three are all shirts or all pants? ## Solution= 1/4

group(1-2).

given(exactly(10, 1-2, pants)).
given(exactly(15, 1-2, shirt)).

take(1-2, 2-2, 3).

probability(or(all(2-2, shirt), all(2-2, pants))).

property(property, [shirt, pants]).

