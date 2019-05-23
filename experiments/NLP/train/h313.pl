% H313: In a class of 30 students, there are 17 girls and 13 boys.  Five are A students, and three of these students are girls.  If a student is chosen at random, what is the probability of choosing a girl or an A student? ## Solution= 19/30

group(1-6).
size(1-6, 30).

given(exactly(3, 1-6, and(a, girl))).
given(exactly(5, 1-6, a)).
given(exactly(17, 1-6, girl)).
given(exactly(13, 1-6, boy)).

take(1-6, 3-3, 1).

probability(all(3-3, or(girl, a))).

property(grade, [a]).
property(gender, [boy, girl]).

