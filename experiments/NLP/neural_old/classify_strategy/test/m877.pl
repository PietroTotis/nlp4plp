% M877: You have 4 dimes and 4 quarters in your pocket.  What is the probability of picking a quarter? ## Solution= 1/2

group(1-10).

given(exactly(4, 1-10, dime)).
given(exactly(4, 1-10, quarter)).

take(1-10, 2-8, 1).

probability(all(2-8, quarter)).

property(coin_type, [quarter, dime]).

