% L47: A company has 9 women and 8 men.  What is the probability that a 7 person committee will have 4 men and 3 women? ## Solution= 0.30234471

group(1-2).

given(exactly(8, 1-2, man)).
given(exactly(9, 1-2, woman)).

take(1-2, 2-9, 7).

probability(and(exactly(4, 2-9, man), exactly(3, 2-9, woman))).

property(property, [woman, man]).

