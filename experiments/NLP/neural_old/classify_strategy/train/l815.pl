% L815: A box of oranges is inspected by examining three randomly selected oranges drawn without replacement.  If all the three oranges are good, the box is approved for sale, otherwise, it is rejected.  Find the probability that a box containing 15 oranges out of which 12 are good and 3 are bad ones will be approved for sale. ## Solution= 44/91

group(3-6).

given(exactly(3, 3-6, bad)).
given(exactly(12, 3-6, good)).

take(3-6, 1-12, 3).

probability(all(1-12, good)).

property(property, [bad, good]).

