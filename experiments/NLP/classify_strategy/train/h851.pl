% H851: Suppose that 41 percent of Americans have blood type A, and 4 percent have blood type AB.  If in the blood of a randomly selected American soldier the A antigen is found, what is the probability that his blood type is A? ## Solution= 0.91111111

group(1-6).

given(exactly(rel(4/100, 1-6), 1-6, ab)).
given(exactly(rel(41/100, 1-6), 1-6, a)).

take(1-6, 2-10, 1).
observe(all(2-10, or(a, ab))).

probability(all(2-10, a)).

property(blood_type, [a, ab]).

