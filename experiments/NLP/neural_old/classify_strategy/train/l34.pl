% L34: Anna has some coins in her purse: 5 quarters, 3 dimes, 2 nickels and 4 pennies.  What is the probability of selecting a quarter? ## Solution= 5/14

group(1-7).

given(exactly(4, 1-7, penny)).
given(exactly(2, 1-7, nickel)).
given(exactly(3, 1-7, dime)).
given(exactly(5, 1-7, quarter)).

take(1-7, 2-8, 1).

probability(all(2-8, quarter)).

property(property, [penny, quarter, nickel, dime]).

