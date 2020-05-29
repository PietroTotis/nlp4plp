% L805: Assume that a certain school contains equal number of female and male students.  5 percent of the male population is football players.  Find the probability that a randomly selected student is a football player male. ## Solution= 0.025

group(1-5).

given(exactly(rel(5/100, 1-5, male), 1-5, and(football, male))).
given(exactly(rel(1/2, 1-5), 1-5, female)).
given(exactly(rel(1/2, 1-5), 1-5, male)).

take(1-5, 3-8, 1).

probability(and(all(3-8, football), all(3-8, male))).

property(gender, [male, female]).
property(sport, [football]).

