% M583: In certain population, the probability that a men lives to at least seventy-five years long is 0.75.  The probability that he will live to at least eighty-five years is 0.65.  If a man is seventy-five years old, what is the conditional probability he will survive to eighty-five years? ## Solution= 0.8666666667

group(1-3).

given(exactly(rel(1/1, 1-3, age85), 1-3, and(age75, age85))).
given(exactly(rel(0.75, 1-3), 1-3, age75)).
given(exactly(rel(0.65, 1-3), 1-3, age85)).

take(1-3, 3-3, 1).
observe(all(3-3, age75)).

probability(all(3-3, age85)).

property(life_expectancy, [age75]).
property(l_e, [age85]).

