% H822: The alignment between the magnetic tape and head in a magnetic tape storage system affects the performance of the system.  Suppose that 10 percent of the read operations are degraded by skewed alignments, 5 percent by off-center alignments, 1 percent by both skewness and offcenter, and the remaining read operations are properly aligned.  The probability of a read error is 0.01 from a skewed alignment, 0.02 from an off-center alignment, 0.06 from both conditions, and 0.001 from a proper alignment.  What is the probability of a read error? ## Solution= .00344

group(1-2).

given(exactly(rel(1/100, 1-2), 1-2, both)).
given(exactly(rel(0.02, 1-2, off-center), 1-2, and(error, off-center))).
given(exactly(rel(5/100, 1-2), 1-2, off-center)).
given(exactly(rel(.001, 1-2, properly), 1-2, and(error, properly))).
given(exactly(rel(.01, 1-2, skewed), 1-2, and(error, skewed))).
given(exactly(rel(10/100, 1-2), 1-2, skewed)).
given(exactly(u, 1-2, properly)).
given(exactly(rel(.06, 1-2, both), 1-2, and(both, error))).

take(1-2, 4-4, 1).

probability(all(4-4, error)).

property(property, [error]).
property(alignments, [both, off-center, properly, skewed]).

