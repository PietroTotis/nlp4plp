% H739: A survey of those using a particular statistical software system indicated that 10 percent were dissatisfied.  Half of those dissatisfied purchased the system from vendor A.  It is also known that 20 percent of those surveyed purchased from vendor A. Given that the software package was purchased from vendor A, what is the probability that that particular user is dissatisfied? ## Solution= .25

group(1-4).

given(exactly(rel(10/100, 1-4), 1-4, dissatisfy)).
given(exactly(rel(1/2, 1-4, dissatisfy), 1-4, and(a, dissatisfy))).
given(exactly(rel(20/100, 1-4), 1-4, a)).

take(1-4, 3-19, 1).
observe(all(3-19, a)).

probability(all(3-19, dissatisfy)).

property(status, [dissatisfy]).
property(vendor, [a]).

