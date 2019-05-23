% L35: Anna has some coins in her purse: 5 quarters, 3 dimes, 2 nickels and 4 pennies.  What is the probability she will select a dime or a penny? ## Solution= 1/2

group(1-7).

given(exactly(4, 1-7, penny)).
given(exactly(2, 1-7, nickel)).
given(exactly(5, 1-7, quarters)).
given(exactly(3, 1-7, dime)).

take(1-7, 2-7, 1).

probability(all(2-7, or(dime, penny))).

property(property, [penny, quarters, nickel, dime]).

