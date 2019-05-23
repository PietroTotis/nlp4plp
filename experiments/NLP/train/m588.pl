% M588: Your sock drawer contains 12 black socks and 16 white socks, what is the probability that you pick out a pair of black socks? ## Solution= 0.174603174603175

group(1-3).

given(exactly(12, 1-3, black)).
given(exactly(16, 1-3, white)).

take(1-3, 1-22, 2).

probability(all(1-22, black)).

property(colour, [white, black]).

