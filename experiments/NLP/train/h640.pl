% H640: If a box contains 75 good light bulbs and 25 defective bulbs and 15 bulbs are removed, find the probability that at least one will be defective. ## Solution= .991

group(1-3).

given(exactly(25, 1-3, defective)).
given(exactly(75, 1-3, good)).

take(1-3, 1-15, 15).

probability(atleast(1, 1-15, defective)).

property(property, [good, defective]).

