% H948: A committee of 5 is chosen from a group of 8 men and 4 women.  What is the probability the group contains a majority of women? ## Solution= 0.151515151515152

group(1-9).

given(exactly(4, 1-9, woman)).
given(exactly(8, 1-9, man)).

take(1-9, 1-2, 5).

probability(atleast(3, 1-2, woman)).

property(property, [woman, man]).

