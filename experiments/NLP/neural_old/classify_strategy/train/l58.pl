% L58: A committee of 5 people is to be formed randomly from a group of 10 women and 6 men.  Find the probability that the committee has 3 women and 2 men. ## Solution= 0.41208791

group(1-13).

given(exactly(10, 1-13, woman)).
given(exactly(6, 1-13, man)).

take(1-13, 1-2, 5).

probability(and(exactly(3, 1-2, woman), exactly(2, 1-2, man))).

property(gender, [woman, man]).

