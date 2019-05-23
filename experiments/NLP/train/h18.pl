% H18: A box contains 100 screws: 20 pieces of type A, of which 5 are flat head and 15 are round head, and 80 pieces of type B, of which 30 are flat head, and 50 are round head.  One selects a screw where the head is flat.  Find the probability that it is of type A. ## Solution= 1/7

group(1-5).
size(1-5, 100).

given(exactly(30, 1-5, and(b, flat))).
given(exactly(20, 1-5, a)).
given(exactly(50, 1-5, and(b, round))).
given(exactly(15, 1-5, and(a, round))).
given(exactly(80, 1-5, b)).
given(exactly(5, 1-5, and(a, flat))).

take(1-5, 2-4, 1).
observe(all(2-4, flat)).

probability(all(2-4, a)).

property(head, [flat, round]).
property(type, [a, b]).

