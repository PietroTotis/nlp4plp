% H675: A beach resort has 25 jet skis for guests to rent.  Of these, 12 are two-person skis, 14 have turbo packs, and 7 are both for two persons and have turbo packs.  A jet ski is chosen at random for rental.  Find the probability that the jet ski is for two persons but does not have turbo packs. ## Solution= .2

group(1-7).
size(1-7, 25).

given(exactly(14, 1-7, turbo)).
given(exactly(12, 1-7, two-person)).
given(exactly(7, 1-7, and(turbo, two-person))).

take(1-7, 3-3, 1).

probability(all(3-3, and(two-person, not(turbo)))).

property(2, [two-person]).
property(packs, [turbo]).

