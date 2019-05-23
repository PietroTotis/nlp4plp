% H950: A college senior finds he needs one more course for graduation and finds only courses in Mathematics, Chemistry, and Computer Science available.  On the basis of interest, he assigns probabilities of 0.1, 0.6 and 0.3, respectively, to the events of choosing each of these.  After considering his past performance, his advisor estimates his probabilities of passing these courses as 0.8, 0.7, and 0.6, respectively, regarding the passing of courses as independent events.  Later we find that the student graduated.  What is the probability he took Chemistry? ## Solution= 0.617647058823529

group(1-15).

given(exactly(rel(.7, 1-15, chemistry), 1-15, and(chemistry, pass))).
given(exactly(rel(.6, 1-15, computer), 1-15, and(computer, pass))).
given(exactly(rel(0.8, 1-15, mathematics), 1-15, and(mathematics, pass))).
given(exactly(rel(.6, 1-15), 1-15, chemistry)).
given(exactly(rel(.1, 1-15), 1-15, mathematics)).
given(exactly(rel(.3, 1-15), 1-15, computer)).

take(1-15, 4-6, 1).
observe(all(4-6, pass)).

probability(all(4-6, chemistry)).

property(property, [pass]).
property(class, [mathematics, chemistry, computer]).

