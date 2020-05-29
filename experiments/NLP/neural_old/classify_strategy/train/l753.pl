% L753: A jar contains 12 black balls and seven red balls.  What is the probability that the first ball picked from the jar at random will be red? ## Solution= 7/19

group(1-2).

given(exactly(12, 1-2, black)).
given(exactly(7, 1-2, red)).

take(1-2, 2-8, 1).

probability(all(2-8, red)).

property(property, [black, red]).

