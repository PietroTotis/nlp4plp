% M116: There are 500 students in a high school senior class.  Of these 500 students, 300 regularly wear a necklace to school, 200 regularly wear a ring, and 125 regularly wear a necklace and a ring.  What is the probability that a senior wears a necklace? ## Solution= 3/5

group(1-4).
size(1-4, 500).

given(exactly(125, 1-4, and(necklace, ring))).
given(exactly(200, 1-4, ring)).
given(exactly(300, 1-4, necklace)).

take(1-4, 3-7, 1).

probability(all(3-7, necklace)).

property(necklace, [necklace]).
property(ring, [ring]).

