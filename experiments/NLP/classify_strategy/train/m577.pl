% M577: At a large high school, the probability that a student takes Japanese and Spanish is 0.08.  The probability that a student takes Spanish is 0.45.  What is the probability that a student taking Japanese given that the student is taking Spanish? ## Solution= 0.177777777777778

group(events).

given(exactly(rel(0.45, events), events, spanish)).
given(exactly(rel(0.08, events), events, and(japanese, spanish))).

take(events, 3-7, 1).
observe(all(3-7, spanish)).

probability(all(3-7, japanese)).

property(japanese, [japanese]).
property(spanish, [spanish]).

