% H282: Four persons are selected from a group of 4 men, 2 women and 3 children.  What is the probability that exactly two of them are men? ## Solution= 10/21

group(1-7).

given(exactly(2, 1-7, woman)).
given(exactly(4, 1-7, man)).
given(exactly(3, 1-7, child)).

take(1-7, 1-2, 4).

probability(exactly(2, 1-2, man)).

property(property, [woman, man, child]).

