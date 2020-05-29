% M59: Seven people are randomly selected from a group of 10 men and 11 women to form a committee.  What is the probability that exactly 5 males are on the committee? ## Solution= 0.119195046439628

group(1-8).

given(exactly(10, 1-8, male)).
given(exactly(11, 1-8, female)).

take(1-8, 1-2, 7).

probability(exactly(5, 1-2, male)).

property(sex, [male, female]).

