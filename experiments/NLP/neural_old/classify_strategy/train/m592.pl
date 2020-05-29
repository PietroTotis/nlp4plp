% M592: 80 people in a sports club were surveyed: 14 played tennis and squash, 56 played tennis and 30 played squash.  One person is chosen at random.  Work out the probability that the person chosen played tennis or squash or both. ## Solution= 0.9

group(1-2).
size(1-2, 80).

given(exactly(14, 1-2, and(squash, tennis))).
given(exactly(56, 1-2, tennis)).
given(exactly(30, 1-2, squash)).

take(1-2, 2-2, 1).

probability(all(2-2, or(or(tennis, squash), and(tennis, squash)))).

property(tennis, [tennis]).
property(squash, [squash]).

