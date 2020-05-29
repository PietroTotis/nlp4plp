% H850: Suppose that 15 percent of the population of a country are unemployed women, and a total of 25 percent are unemployed.  What percent of the unemployed are women? ## Solution= .6

group(1-7).

given(exactly(rel(15/100, 1-7), 1-7, and(unemployed, woman))).
given(exactly(rel(25/100, 1-7), 1-7, unemployed)).

take(1-7, 2-2, 1).
observe(all(2-2, unemployed)).

probability(all(2-2, woman)).

property(gender, [woman]).
property(property, [unemployed]).

