% H534: There are two lines of defence against an attacking aircraft, the first is a missile and the second an anti-aircraft gun.  The respective probabilities that the aircraft being hit by the missile and the gun are 2/9 and 1/8, respectively.  What is the probability of hitting the aircraft? ## Solution= 23/72

group(2-14).

given(exactly(rel(1/8,2-14), 2-14, hit)).
group(2-11).

given(exactly(rel(2/9,2-11), 2-11, hit)).

take_wr(2-11, 1-6-0, 1).
take_wr(2-14, 1-6-1, 1).
union(1-6, [1-6-0,1-6-1]).


probability(atleast(1, 1-6, hit)).

property(outcome(0), [hit]).

