% L536: The probability that a regularly scheduled flight departs on time is 0.83, the probability that it arrives on time is 0.82 and the probability that it departs and arrives on time is 0.78.  Find the probability that a plane arrives on time given that it departed on time. ## Solution= 78/83

group(planes).

given(exactly(rel(0.83, planes), planes, depart)).
given(exactly(rel(0.82, planes), planes, arrive)).
given(exactly(rel(0.78, planes), planes, and(arrive, depart))).

take(planes, 2-6, 1).
observe(all(2-6, depart)).

probability(all(2-6, arrive)).

property(arrive, [arrive]).
property(depart, [depart]).

