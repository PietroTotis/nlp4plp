% M736: A committee of five is chosen randomly from a group of six males and eight females.  What is the probability that the committee includes either all males or all females? ## Solution= 0.030969030969031

group(1-10).

given(exactly(8, 1-10, female)).
given(exactly(6, 1-10, male)).

take(1-10, 1-2, 5).

probability(or(all(1-2, male), all(1-2, female))).

property(sex, [male, female]).

