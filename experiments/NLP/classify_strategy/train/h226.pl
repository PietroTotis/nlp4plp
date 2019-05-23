% H226: If 5 percent of men and 0.25 percent of women are color blind, what is the probability that a randomly selected person is color blind? ## Solution= .02625

group(population).

given(exactly(rel(0.25/100, population, woman), population, and(blind, woman))).
given(exactly(rel(1/2, population), population, woman)).
given(exactly(rel(5/100, population, man), population, and(blind, man))).
given(exactly(rel(1/2, population), population, man)).

take(population, 1-23, 1).

probability(all(1-23, blind)).

property(gender, [woman, man]).
property(color_blind, [blind]).

