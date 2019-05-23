% M732: The president of a large company selects six employees to receive a special bonus.  He claims that the six employees are chosen randomly from among the 30 employees, of which 19 are women and 11 are men.  What is the probability that no woman is chosen? ## Solution= 0.000778072502210433

group(2-14).
size(2-14, 30).

given(exactly(19, 2-14, woman)).
given(exactly(11, 2-14, man)).

take(2-14, 1-9, 6).

probability(none(1-9, woman)).

property(sex, [woman, man]).

