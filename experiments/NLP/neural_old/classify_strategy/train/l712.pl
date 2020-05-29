% L712: The composition of the Senate of the 107th Congress is 49 Republicans, 1 Independent and 50 Democrats.  A new committee is being formed to study ways to benefit the arts in education.  If 3 Senators are selected at random to head the committee, what is the probability that they will all be Republicans? ## Solution= 0.113939393939394

group(1-5).

given(exactly(50, 1-5, democrat)).
given(exactly(1, 1-5, independent)).
given(exactly(49, 1-5, republican)).

take(1-5, 3-3, 3).

probability(all(3-3, republican)).

property(property, [independent, republican, democrat]).

