% M874: A division of a company consists of seven men and five women.  If two of these twelve employees are randomly selected as representatives of the division, what is the probability that both representatives will be female? ## Solution= 5/33

group(1-5).

given(exactly(7, 1-5, man)).
given(exactly(5, 1-5, woman)).

take(1-5, 2-2, 2).

probability(all(2-2, woman)).

property(sex, [woman, man]).

