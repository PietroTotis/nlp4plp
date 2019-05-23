% L711: In a company there are 7 executives: 4 women and 3 men.  Three are selected to attend a management seminar.  Find the probability that all 3 selected will be women. ## Solution= 4/35

group(1-7).
size(1-7, 7).

given(exactly(4, 1-7, woman)).
given(exactly(3, 1-7, man)).

take(1-7, 2-1, 3).

probability(all(2-1, woman)).

property(property, [woman, man]).

