% H464:  In a certain population, the probability a woman lives to at least seventy years is 0.70 and is 0.55 that she will live to at least eighty years.  If a woman is seventy years old, what is the conditional probability she will survive to eighty years? ## Solution= 55/70

group(1-4).

given(exactly(rel(0.55, 1-4), 1-4, and(seventy,eighty))).
given(exactly(rel(0.70, 1-4), 1-4, seventy)).

take(1-4, 2-3, 1).
observe(all(2-3, seventy)).

probability(all(2-3, eighty)).

property(property, [seventy]).
property(property1, [eighty]).
