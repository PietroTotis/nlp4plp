% L1082: In a class of 100 students suppose 60 are hispanic, and suppose that 10 of the hispanic students are males.  Find the probability that a randomly chosen hispanic student is a male. ## Solution= 1/6

group(1-3).
size(1-3, 100).

given(exactly(10, 1-3, and(hispanic, male))).
given(exactly(60, 1-3, hispanic)).

take(1-3, 2-9, 1).
observe(all(2-9, hispanic)).

probability(all(2-9, male)).

property(hispanic, [hispanic]).
property(gender, [male]).

