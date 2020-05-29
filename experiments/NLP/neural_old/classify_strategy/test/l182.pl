% L182: A boxcar contains six complex electronic systems.  Two of the six are to be randomly selected for thorough testing and then classified as defective or not defective.  If two of the six systems are actually defective, find the probability that at least one of the two systems tested will be defective. ## Solution= 9/15

group(1-7).
size(1-7, 6).

given(exactly(2, 1-7, defective)).

take(1-7, 2-1, 2).

probability(atleast(1, 2-1, defective)).

property(property, [defective]).

