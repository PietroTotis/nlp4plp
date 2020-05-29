% M469: A bucket contains 5 red balls and 5 blue balls.  Two balls are drawn without replacement.  If the first ball is blue, what is the probability that the second ball is also blue? ## Solution= 0.444444444444444

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 2).
observe(nth(1, 2-2, blue)).

probability(nth(2, 2-2, blue)).

property(colour, [blue, red]).

