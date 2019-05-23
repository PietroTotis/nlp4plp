% H735: A certain form of cancer is known to be found in women over 60 with probability 0.07.  A blood test exists for the detection of the disease but the test is not infallible.  In fact, it is known that 10 percent of the time the test gives a false negative and 5 percent of the time the test, gives a false positive.  If a woman over 60 is known to have taken the test and received a negative result, what is the probability that she has the disease? ## Solution= .00786

group(1-12).

given(exactly(rel(10/100, 1-12, cancer), 1-12, and(cancer, negative))).
given(exactly(rel(5/100, 1-12, healthy), 1-12, and(healthy, positive))).
given(exactly(rel(0.07, 1-12), 1-12, cancer)).
given(exactly(u, 1-12, healthy)).

take(1-12, 4-3, 1).
observe(all(4-3, negative)).

probability(all(4-3, cancer)).

property(test, [positive, negative]).
property(disease, [healthy, cancer]).

