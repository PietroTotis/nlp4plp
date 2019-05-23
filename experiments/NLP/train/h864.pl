% H864: Suppose that 37 percent of a community are at least 45 years old.  If 80 percent of the time a person who is 45 or older tells the truth, and 65 percent of the time a person below 45 tells the truth, what is the probability that a randomly selected person answers a question truthfully? ## Solution= .7055

group(1-7).

given(exactly(rel(37/100, 1-7), 1-7, 45)).
given(exactly(rel(80/100, 1-7, 45), 1-7, and(45, truth))).
given(exactly(u, 1-7, below)).
given(exactly(rel(65/100, 1-7, below), 1-7, and(below, truth))).

take(1-7, 2-40, 1).

probability(all(2-40, truth)).

property(old, [below, 45]).
property(tells, [truth]).

