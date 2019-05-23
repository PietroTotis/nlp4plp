% H967: A production lot has 100 units of which 25 are known to be defective.  A random sample of 4 units is chosen without replacement.  What is the probability that the sample will contain no more than 2 defective units? ## Solution= 0.952782612576427

group(1-3).
size(1-3, 100).

given(exactly(25, 1-3, defective)).

take(1-3, 2-6, 4).

probability(atmost(2, 2-6, defective)).

property(property, [defective]).

