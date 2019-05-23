% M886: Rosie has to take a Math course and an English course, both of which are available at 9 a.m., 10 a.m., and 11 a.m..  If Rosie picks a schedule at random, what is the probability that she will have Math at 9 a.m. and English at 11 a.m.? ## Solution= 1/3*1/2

group(1-17).

group(rest(1-6)).

given(exactly(1, 1-17, 11)).
given(exactly(1, 1-17, 10)).
given(exactly(1, 1-17, 9)).

take(rest(1-6), 1-10, 1).
take(1-17, 1-6, 1).

probability(and(all(1-10, 11), all(1-6, 9))).

property(outcome, [11, 9, 10]).

