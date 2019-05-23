% L991: A group of people consists of 70 men and 70 women.  Seven men and ten women are found to be color-blind.  If the randomly selected person is color-blind, what is the probability that the person is a man? ## Solution= 7/17

group(1-2).

given(exactly(7, 1-2, and(color-blind, man))).
given(exactly(70, 1-2, man)).
given(exactly(10, 1-2, and(color-blind, woman))).
given(exactly(70, 1-2, woman)).

take(1-2, 3-5, 1).
observe(all(3-5, color-blind)).

probability(all(3-5, man)).

property(blind, [color-blind]).
property(gender, [woman, man]).

