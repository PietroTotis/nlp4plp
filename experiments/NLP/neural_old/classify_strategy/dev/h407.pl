% H407: In a class there are 15 boys and 10 girls.  three students are selected at random.  What is the probability that 2 girls and 1 boy is selected? ## Solution= 0.293478260869565

group(1-3).

given(exactly(15, 1-3, boy)).
given(exactly(10, 1-3, girl)).

take(1-3, 2-2, 3).

probability(and(exactly(2, 2-2, girl), exactly(1, 2-2, boy))).

property(property, [boy, girl]).

