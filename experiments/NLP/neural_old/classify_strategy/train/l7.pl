% L7: The blood groups of 200 people is distributed as follows: 50 have type A blood, 65 have B blood type, 70 have O blood type and 15 have type AB blood.  If a person from this group is selected at random, what is the probability that this person has O blood type? ## Solution= 0.35

group(1-6).
size(1-6, 200).

given(exactly(15, 1-6, ab)).
given(exactly(70, 1-6, o)).
given(exactly(50, 1-6, a)).
given(exactly(65, 1-6, b)).

take(1-6, 2-3, 1).

probability(all(2-3, o)).

property(type, [a, b, ab, o]).

