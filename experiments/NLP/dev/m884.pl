% M884: A certain prescription drug produces side effects in 3 percent of the patients.  Three patients that have taken this drug are selected at random.  Find the probability that all three had side effects. ## Solution= 2.70E-05

group(1-13).

given(exactly(rel(3/100, 1-13), 1-13, side_effects)).

take(1-13, 2-2, 3).

probability(all(2-2, side_effects)).

property(property, [side_effects]).

