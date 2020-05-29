% L59: A committee of 5 people is to be formed randomly from a group of 10 women and 6 men.  Find the probability that the committee has at least 3 women. ## Solution= 0.758240

group(1-13).

given(exactly(10, 1-13, woman)).
given(exactly(6, 1-13, man)).

take(1-13, 1-2, 5).

probability(atleast(3, 1-2, woman)).

property(gender, [woman, man]).

