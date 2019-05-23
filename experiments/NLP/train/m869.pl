% M869: In a certain corporation, there are 300 male employees and 100 female employees.  It is known that 20 percent of the male employees have advanced degrees and 40 percent of the females have advanced degrees.  If one of the 400 employees is chosen at random, what is the probability this employee has an advanced degree and is female? ## Solution= 1/10

group(1-4).
size(1-4, 400).

given(exactly(100, 1-4, female)).
given(exactly(rel(40/100, 1-4, female), 1-4, and(advanced, female))).
given(exactly(rel(20/100, 1-4, male), 1-4, and(advanced, male))).
given(exactly(300, 1-4, male)).

take(1-4, 3-2, 1).

probability(all(3-2, and(female, advanced))).

property(degree_type, [advanced]).
property(sex, [male, female]).

