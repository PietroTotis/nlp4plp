% M800: A box contains ten computer disks, two of which are defective.  If two disks are selected at random from the box, find the probability that they are both defective. ## Solution= 0.0222222222222222

group(1-6).
size(1-6, 10).

given(exactly(2, 1-6, defective)).

take(1-6, 2-3, 2).

probability(all(2-3, defective)).

property(property, [defective]).

