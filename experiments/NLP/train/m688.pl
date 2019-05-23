% M688: In 2009, about 8.29 percent of all houses for sale in the United States were in the northeast, about 14.44 percent were in the midwest, about 54.01 percent were in the south, and about 23.26 percent were in the west.  A house is selected at random from the houses for sale in the United States.  What is the probability that the house is in the midwest or the south? ## Solution= 68.45/100

group(1-9).

given(exactly(rel(23.26/100, 1-9), 1-9, west)).
given(exactly(rel(54.01/100, 1-9), 1-9, south)).
given(exactly(rel(8.29/100, 1-9), 1-9, northeast)).
given(exactly(rel(14.44/100, 1-9), 1-9, midwest)).

take(1-9, 2-2, 1).

probability(all(2-2, or(midwest, south))).

property(place, [west, northeast, midwest, south]).

