% H44: A complete cycle of a traffic light takes 80 seconds.  During each cycle, the light is green for 40 seconds, amber for 10 seconds, and red for 30 seconds.  At a randomly chosen time, what is the probability that the light will not be red? ## Solution= 5/8

group(1-3).
size(1-3, 80).

given(exactly(10, 1-3, amber)).
given(exactly(30, 1-3, red)).
given(exactly(40, 1-3, green)).

take(1-3, 3-13, 1).

probability(none(3-13, red)).

property(property, [amber, green, red]).

