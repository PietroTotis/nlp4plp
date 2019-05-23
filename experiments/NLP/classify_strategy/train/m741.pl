% M741: A mathematics department consists of ten men and eight women.  Six mathematics faculty members are to be selected at random for the curriculum committee.  What is the probability that two women and four men are selected? ## Solution= 0.316742081447964

group(1-3).

given(exactly(10, 1-3, man)).
given(exactly(8, 1-3, woman)).

take(1-3, 2-4, 6).

probability(and(exactly(2, 2-4, woman), exactly(4, 2-4, man))).

property(sex, [woman, man]).

