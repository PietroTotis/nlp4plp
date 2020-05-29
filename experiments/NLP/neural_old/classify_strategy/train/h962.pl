% H962: A roulette wheel has 38 slots - 18 red, 18 black, and 2 green.  Suppose the spins of the wheel are independent and that the wheel is fair.  The wheel is spun twice and we know that at least one spin is green.  What is the probability that both spins are green? ## Solution= 0.02702702703

group(1-6).
size(1-6, 38).

given(exactly(2, 1-6, green)).
given(exactly(18, 1-6, black)).
given(exactly(18, 1-6, red)).

take_wr(1-6, 3-5, 2).
observe(some(3-5, green)).

probability(all(3-5, green)).

property(property, [black, green, red]).

