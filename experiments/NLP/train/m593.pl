% M593: 80 people in a sports club were surveyed: 14 played tennis and squash, 56 played tennis and 30 played squash.  What is the probability that a person chosen at random who plays squash also plays tennis? ## Solution= 0.466666666666667

group(1-2).
size(1-2, 80).

given(exactly(14, 1-2, and(squash, tennis))).
given(exactly(56, 1-2, tennis)).
given(exactly(30, 1-2, squash)).

take(1-2, 2-7, 1).
observe(all(2-7, squash)).

probability(all(2-7, tennis)).

property(tennis, [tennis]).
property(squash, [squash]).

