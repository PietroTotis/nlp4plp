% L700: A lot of portable radios contains 15 good radios and 3 defective ones.  If 2 are selected and tested, find the probability that at least one will be defective. ## Solution= 0.313725490196078

group(1-2).

given(exactly(15, 1-2, good)).
given(exactly(3, 1-2, defective)).

take(1-2, 2-2, 2).

probability(atleast(1, 2-2, defective)).

property(property, [good, defective]).

