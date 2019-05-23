% M742: A mathematics department consists of ten men and eight women.  Six mathematics faculty members are to be selected at random for the curriculum committee.  What is the probability that two or fewer women are selected? ## Solution= 0.436651583710407

group(1-3).

given(exactly(10, 1-3, man)).
given(exactly(8, 1-3, woman)).

take(1-3, 2-4, 6).

probability(atmost(2, 2-4, woman)).

property(sex, [woman, man]).

