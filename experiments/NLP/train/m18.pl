% M18: A certain strain of rabbit produces offspring in equal ratio male to female.  One third of the male offspring and one half of the female offspring are black.  In a litter of 5 offspring, what is the probability that exactly 2 offspring will be male? ## Solution= 0.3125

group(1-7).

given(exactly(rel(1/2, 1-7), 1-7, male)).
given(exactly(rel(1/2, 1-7, female), 1-7, and(black, female))).
given(exactly(rel(1/3, 1-7, male), 1-7, and(black, male))).
given(exactly(rel(1/2, 1-7), 1-7, female)).

take(1-7, 3-6, 5).

probability(exactly(2, 3-6, male)).

property(colour, [black]).
property(sex, [male, female]).

