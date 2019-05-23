% L585: Sixty percent of the students at a certain school wear neither a ring nor a necklace.  Twenty percent wear a ring and 30 percent wear a necklace.  If one of the students is chosen randomly, what is the probability that this student is wearing a ring or a necklace? ## Solution= 0.4

group(1-5).

given(exactly(rel(60/100, 1-5), 1-5, and(neither, nor))).
given(exactly(rel(20/100, 1-5), 1-5, ring)).
given(exactly(rel(30/100, 1-5), 1-5, necklace)).

take(1-5, 3-2, 1).

probability(all(3-2, or(ring, necklace))).

property(necklace, [necklace, nor]).
property(ring, [ring, neither]).

