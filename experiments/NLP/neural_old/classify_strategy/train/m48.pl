% M48: A survey determines that in a particular town, 33 percent of the residents jog, 42 percent bike, and 12 percent do both activities.  What is the probability that a randomly selected person does neither activity? ## Solution= 0.37

group(1-14).

given(exactly(rel(42/100, 1-14), 1-14, bike)).
given(exactly(rel(12/100, 1-14), 1-14, and(bike, jog))).
given(exactly(rel(33/100, 1-14), 1-14, jog)).

take(1-14, 2-9, 1).

probability(all(2-9, and(not(bike), not(jog)))).

property(bike, [bike]).
property(jog, [jog]).

