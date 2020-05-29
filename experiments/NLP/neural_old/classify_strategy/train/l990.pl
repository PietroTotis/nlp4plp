% L990: A group of people consists of 70 men and 70 women.  Seven men and ten women are found to be color-blind.  What is the probability that a randomly selected person is color-blind? ## Solution= 17/140

group(1-2).

given(exactly(7, 1-2, and(color-blind, man))).
given(exactly(70, 1-2, man)).
given(exactly(10, 1-2, and(color-blind, woman))).
given(exactly(70, 1-2, woman)).

take(1-2, 3-9, 1).

probability(all(3-9, color-blind)).

property(blind, [color-blind]).
property(gender, [woman, man]).

