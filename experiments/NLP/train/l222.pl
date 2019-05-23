% L222: A random sample of size 10 is chosen from a population of 100 without replacement.  If A and B are two individuals among the 100, what is the probability that the sample will contain both? ## Solution= 0.00909090909090909

group(1-11).
size(1-11, 100).

given(exactly(1, 1-11, b)).
given(exactly(1, 1-11, a)).

take(1-11, 1-3, 10).

probability(and(exactly(1, 1-3, a), exactly(1, 1-3, b))).

property(property, [a, b]).

