% M820: A box contains 7 red and 13 blue balls.  Two balls are selected at random and are discarded without their colors being seen.  If a third ball is drawn randomly and observed to be red, what is the probability that both of the discarded balls were blue? ## Solution= 0.45614035

group(1-2).

given(exactly(13, 1-2, blue)).
given(exactly(7, 1-2, red)).

take(1-2, 2-2, 3).
observe(nth(3, 2-2, red)).

probability(and(nth(1, 2-2, blue), nth(2, 2-2, blue))).

property(colour, [blue, red]).

