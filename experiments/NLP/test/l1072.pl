% L1072: An urn contains three red marbles and two green marbles.  An experiment consists of drawing one marble at a time without replacement, until a red one is obtained.  Find the probability that only one draw is needed. ## Solution= 0.6

group(1-2).

given(exactly(2, 1-2, green)).
given(exactly(3, 1-2, red)).

take(1-2, 3-7, 1).

probability(all(3-7, red)).

property(property, [green, red]).

