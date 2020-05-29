% M763: Three people are chosen at random from a group of five men and ten women.  What is the probability that all three are men? ## Solution= 0.021978021978022

group(1-9).

given(exactly(10, 1-9, woman)).
given(exactly(5, 1-9, man)).

take(1-9, 1-2, 3).

probability(all(1-2, man)).

property(sex, [woman, man]).

