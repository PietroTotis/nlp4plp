% H828: Suppose that the probability that a driver is a male, and has at least one motor vehicles accident during a one-year period, is 0.12.  Suppose that the corresponding probability for a female is 0.06.  What is the probability of a randomly selected driver having at least one accident during the next 12 months? ## Solution= .18

group(1-7).

given(exactly(rel(.06, 1-7), 1-7, and(accident, female))).
given(exactly(rel(0.12, 1-7), 1-7, and(accident, male))).

take(1-7, 3-9, 1).

probability(all(3-9, accident)).

property(gender, [male, female]).
property(accident, [accident]).

