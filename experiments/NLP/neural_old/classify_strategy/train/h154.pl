% H154: A total of 46 percent of the voters in a certain city classify themselves as Independents, whereas 30 percent classify themselves as Liberals and 24 percent say that they are Conservatives.  In a recent local election, 35 percent of the Independents, 62 percent of the Liberals, and 58 percent of the Conservatives voted.  A voter is chosen at random.  What is the probability that this voter is a Liberal? ## Solution= 0.38255862

group(1-8).

given(exactly(rel(30/100, 1-8), 1-8, liberal)).
given(exactly(rel(46/100, 1-8), 1-8, independent)).
given(exactly(rel(62/100, 1-8, liberal), 1-8, and(liberal, vote))).
given(exactly(rel(35/100, 1-8, independent), 1-8, and(independent, vote))).
given(exactly(rel(24/100, 1-8), 1-8, conservative)).
given(exactly(rel(58/100, 1-8, conservative), 1-8, and(conservative, vote))).

take(1-8, 3-2, 1).
observe(all(3-2, vote)).

probability(all(3-2, liberal)).

property(affiliation, [independent, liberal, conservative]).
property(voted, [vote]).

