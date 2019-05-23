% M826: A committee consists of four women and three men.  The committee will randomly select two people to attend a conference in Hawaii.  Find the probability that both are women. ## Solution= 0.285714285714286

group(1-2).

given(exactly(3, 1-2, man)).
given(exactly(4, 1-2, woman)).

take(1-2, 2-7, 2).

probability(all(2-7, woman)).

property(sex, [woman, man]).

