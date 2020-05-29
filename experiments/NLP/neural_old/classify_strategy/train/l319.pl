% L319: The population of Nicosia is 75 percent Greek and 25 percent Turkish.  20 percent of the Greeks and 10 percent of the Turks speak English.  A visitor to the town meets someone who speaks English.  What is the probability that he is a Greek? ## Solution= 0.85714286

group(1-2).

given(exactly(rel(10/100, 1-2, turkish), 1-2, and(english, turkish))).
given(exactly(rel(20/100, 1-2, greek), 1-2, and(english, greek))).
given(exactly(rel(75/100, 1-2), 1-2, greek)).
given(exactly(rel(25/100, 1-2), 1-2, turkish)).

take(1-2, 3-7, 1).
observe(all(3-7, english)).

probability(all(3-7, greek)).

property(origin, [greek, turkish]).
property(language, [english]).

