% M805: Two representatives are chosen at random from a group of 12 students that has 6 girls and 6 boys.  What is the probability that the representatives selected are either both boys or both girls? ## Solution= 0.454545454545455

group(1-9).
size(1-9, 12).

given(exactly(6, 1-9, boy)).
given(exactly(6, 1-9, girl)).

take(1-9, 1-2, 2).

probability(or(all(1-2, girl), all(1-2, boy))).

property(sex, [boy, girl]).

