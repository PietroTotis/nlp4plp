% H181: In a certain town, 30 percent of the people are Conservatives ; 50 percent Socialists ; and 20 percent Liberals.  In this town at the last election, 65 percent of Conservatives voted, as did 82 percent of the Socialists and 50 percent of the Liberals.  A person from the town is selected at random, and states that she voted at the last election.  What is the probability that she is a Socialist? ## Solution= 0.58156028

group(1-4).

given(exactly(rel(20/100, 1-4), 1-4, liberal)).
given(exactly(rel(30/100, 1-4), 1-4, conservative)).
given(exactly(rel(82/100, 1-4, socialist), 1-4, and(socialist, vote))).
given(exactly(rel(50/100, 1-4, liberal), 1-4, and(liberal, vote))).
given(exactly(rel(50/100, 1-4), 1-4, socialist)).
given(exactly(rel(65/100, 1-4, conservative), 1-4, and(conservative, vote))).

take(1-4, 3-2, 1).
observe(all(3-2, vote)).

probability(all(3-2, socialist)).

property(affiliation, [socialist, liberal, conservative]).
property(voted, [vote]).

