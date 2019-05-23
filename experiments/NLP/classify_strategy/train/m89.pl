% M89: In a class, there are 15 boys and 10 girls.  Three students are selected at random.  What is the probability that 1 girl and 2 boys are selected? ## Solution= 21/46

group(1-3).

given(exactly(15, 1-3, boy)).
given(exactly(10, 1-3, girl)).

take(1-3, 2-2, 3).

probability(and(exactly(1, 2-2, girl), exactly(2, 2-2, boy))).

property(sex, [boy, girl]).

