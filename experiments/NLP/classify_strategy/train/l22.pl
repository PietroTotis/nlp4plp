% L22: A class contains 3 girls to every 2 boys.  What is the probability a student selected at random from this class is a boy? ## Solution= 2/5

group(1-2).

given(exactly(3, 1-2, girl)).
given(exactly(2, 1-2, boy)).

take(1-2, 2-6, 1).

probability(all(2-6, boy)).

property(gender, [boy, girl]).

