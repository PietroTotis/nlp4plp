% M876: You have 6 nickels in your pocket.  What is the probability of picking a nickel? ## Solution= 1

group(1-7).

given(exactly(6, 1-7, nickel)).

take(1-7, 2-8, 1).

probability(all(2-8, nickel)).

property(coin_type, [nickel]).

