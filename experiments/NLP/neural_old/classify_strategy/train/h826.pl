% H826: Suppose that 33 percent of the people have O + blood and 7 percent have O -.  What is the probability that the next president of the United States has type O blood? ## Solution= .4

group(1-7).

given(exactly(rel(7/100, 1-7), 1-7, and(-, o))).
given(exactly(rel(33/100, 1-7), 1-7, and(+, o))).

take(1-7, 2-8, 1).

probability(all(2-8, o)).

property(type, [+, -]).
property(blood, [o]).

