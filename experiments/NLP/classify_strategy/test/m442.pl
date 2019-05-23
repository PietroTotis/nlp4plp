% M442: There are 4 puppies ; two are male and two are female.  If you randomly pick two puppies, what is the probability that they will both be female? ## Solution= 0.166666666666667

group(1-4).
size(1-4, 4).

given(exactly(2, 1-4, female)).
given(exactly(2, 1-4, male)).

take(1-4, 2-6, 2).

probability(all(2-6, female)).

property(sex, [male, female]).

