%h823 skip 1 823 	Suppose that in a community of 400 adults, 300 bike or swim or do both, 160 swim, and 120 swim and bike. What is the probability that an adult, selected at random from this community, bikes? ## Solution= 260/400

group(adults).
size(adults,400).
property(s,[swim]).
property(b,[bike]).
given(exactly(300,adults,or(swim,bike))).
given(exactly(160,adults,swim)).
given(exactly(120,adults,and(swim,bike))).
take(adults,one,1).
probability(all(one,bike)).
