% H159: With probability .6, the present was hidden by mom ; with probability .4, it was hidden by dad.  When mom hides the present, she hides it upstairs 70 percent of the time and downstairs 30 percent of the time.  Dad is equally likely to hide it upstairs or downstairs.  What is the probability that the present is upstairs? ## Solution= .62

group(1-6).

given(exactly(rel(.6, 1-6), 1-6, mom)).
given(exactly(rel(1/2, 1-6, dad), 1-6, and(dad, upstairs))).
given(exactly(rel(.4, 1-6), 1-6, dad)).
given(exactly(rel(70/100, 1-6, mom), 1-6, and(mom, upstairs))).
given(exactly(rel(30/100, 1-6, mom), 1-6, and(downstair, mom))).
given(exactly(rel(1/2, 1-6, dad), 1-6, and(dad, downstair))).

take(1-6, 4-7, 1).

probability(all(4-7, upstairs)).

property(location, [upstairs, downstair]).
property(parent, [dad, mom]).

