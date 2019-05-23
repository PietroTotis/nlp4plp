% L778: Four persons are chosen at random from a group of 3 men, 2 women and 4 children.  What is the probability that exactly two of them will be children? ## Solution= 10/21

group(1-9).

given(exactly(2, 1-9, woman)).
given(exactly(3, 1-9, man)).
given(exactly(4, 1-9, child)).

take(1-9, 1-2, 4).

probability(exactly(2, 1-2, child)).

property(property, [woman, man, child]).

