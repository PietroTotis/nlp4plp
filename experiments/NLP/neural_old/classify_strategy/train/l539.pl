% L539: A small town has one fire engine and one ambulance available for emergencies.  The probability that the fire engine is available when needed is 0.98, and the probability that the ambulance is available when called is 0.92.  In the event of an injury resulting from a burning building, find the probability that both the ambulance and the fire engine will be available. ## Solution= 0.9016

group(1-10).

given(exactly(rel(0.92,1-10), 1-10, available)).
group(1-7).

given(exactly(rel(0.98,1-7), 1-7, available)).

take_wr(1-10, 1-13-0, 1).
take_wr(1-7, 1-13-1, 1).
union(1-13, [1-13-0,1-13-1]).


probability(all(1-13, available)).

property(outcome(0), [available]).

