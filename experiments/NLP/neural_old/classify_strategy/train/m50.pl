% M50: In a junior football league, 55 percent of the players come from Western Canada, and 45 percent are from Eastern Canada.  From this league, 17 percent of the Western players and 11 percent of the Eastern players will go on to the CFL.  If a randomly chosen CFL player who came from the junior league is selected, what is the probability that he came from Eastern Canada? ## Solution= 0.346153846153846

group(1-11).

given(exactly(rel(55/100, 1-11), 1-11, western)).
given(exactly(rel(45/100, 1-11), 1-11, eastern)).
given(exactly(rel(11/100, 1-11, eastern), 1-11, and(cfl, eastern))).
given(exactly(rel(17/100, 1-11, western), 1-11, and(cfl, western))).

take(1-11, 3-6, 1).
observe(all(3-6, cfl)).

probability(all(3-6, eastern)).

property(origin, [western, eastern]).
property(property, [cfl]).

