% H60: In a group of 100 people ; 19 were drinking punch and 23 were eating fish.  Find the probability that a people picked from this group at random is either drinking punch or eating fish? ## Solution= 21/50

group(1-6).
size(1-6, 100).

given(exactly(19, 1-6, punch)).
given(exactly(23, 1-6, fish)).

take(1-6, 2-6, 1).

probability(all(2-6, or(punch, fish))).

property(property, [fish, punch]).

