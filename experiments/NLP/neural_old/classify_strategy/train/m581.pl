% M581: In a school, the probability that a student takes environmental science and geography is 0.25.  The probability that a student takes environmental science is 0.72.  What is probability that a student takes geography given that the student is taking environmental science? ## Solution= 0.347222222222222

group(events).

given(exactly(rel(0.72, events), events, science)).
given(exactly(rel(0.25, events), events, and(geography, science))).

take(events, 3-6, 1).
observe(all(3-6, science)).

probability(all(3-6, geography)).

property(science, [science]).
property(geography, [geography]).

