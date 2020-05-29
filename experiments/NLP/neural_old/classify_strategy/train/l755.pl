% L755: A jar contains 12 black balls and seven red balls.  If a black ball is removed from the jar, what is the probability that the next ball picked from the jar is also black? ## Solution= 11/18

group(rest(2-4)).

group(1-2).

given(exactly(12, 1-2, black)).
given(exactly(7, 1-2, red)).

take(rest(2-4), 2-18, 1).
take(1-2, 2-4, 1).
observe(all(2-4, black)).

probability(all(2-18, black)).

property(property, [black, red]).

