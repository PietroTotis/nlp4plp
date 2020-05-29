% H621: A school has 7 men and 5 women on its faculty.  What is the probability that women will outnumber men on a randomly selected five-member committee? ## Solution= 41/132

group(1-2).

given(exactly(7, 1-2, man)).
given(exactly(5, 1-2, woman)).

take(1-2, 2-15, 5).

probability(atleast(3, 2-15, woman)).

property(property, [woman, man]).

