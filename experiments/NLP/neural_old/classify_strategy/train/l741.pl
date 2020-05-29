% L741: An American Roulette wheel has thirty-eight compartments around its circumference.  Thirty six compartments are numbered from 1 to 36 with half of them colored red and half colored black.  The remaining two compartments, numbered 0 and 00, are colored green.  A ball is spun and lands in one of the compartments.  What is the probability that the ball lands on a green colored compartment? ## Solution= 1/19

group(1-4).
size(1-4, 38).

given(exactly(2, 1-4, green)).
given(exactly(rel(1/2, 1-4, number), 1-4, and(number, red))).
given(exactly(36, 1-4, number)).
given(exactly(rel(1/2, 1-4, number), 1-4, and(black, number))).

take(1-4, 4-2, 1).

probability(all(4-2, green)).

property(color, [black, green, red]).
property(numbered, [number]).

