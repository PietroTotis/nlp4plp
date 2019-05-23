% L716: A recent survey indicated that in a town of 1500 households, 850 had cordless telephones.  If a household is randomly selected, find the probability that it has a cordless telephone. ## Solution= 850/1500

group(1-8).
size(1-8, 1500).

given(exactly(850, 1-8, telephone)).

take(1-8, 2-3, 1).

probability(all(2-3, telephone)).

property(property, [telephone]).

