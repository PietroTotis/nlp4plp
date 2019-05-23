% M879: You have 10 quarters in your pocket.  4 of them were made in 2000.  6 of them were made in 2004.  What is the probability of picking a 2004 one? ## Solution= 3/5

group(1-4).
size(1-4, 10).

given(exactly(6, 1-4, 2004)).
given(exactly(4, 1-4, 2000)).

take(1-4, 4-9, 1).

probability(all(4-9, 2004)).

property(production_year, [2000, 2004]).

