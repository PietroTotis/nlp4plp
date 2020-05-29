% L1008: A marketing survey indicates that 60 percent of the population owns an automobile, 30 percent owns a house, and 20 percent owns both an automobile and a house.  What percentage of the population owns an automobile or a house, but not both? ## Solution= 1/2

group(1-10).

given(exactly(rel(30/100, 1-10), 1-10, house)).
given(exactly(rel(20/100, 1-10), 1-10, and(automobile, house))).
given(exactly(rel(60/100, 1-10), 1-10, automobile)).

take(1-10, 2-2, 1).

probability(all(2-2, and(or(automobile, house), not(and(automobile, house))))).

property(auto, [automobile]).
property(house, [house]).

