% M904: In a group there are 4 boys and 8 girls.  If three students are chosen, what is the probability of choosing three girls sequentially? ## Solution= 0.2545454545

group(1-3).

given(exactly(4, 1-3, boy)).
given(exactly(8, 1-3, girl)).

take(1-3, 2-3, 3).

probability(all(2-3, girl)).

property(sex, [boy, girl]).

