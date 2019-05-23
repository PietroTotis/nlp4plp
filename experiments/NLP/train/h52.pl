% H52: Articles coming through an inspection line are visually inspected by two successive inspectors.  When a defective article comes through the inspection line, the probability that it gets by the first inspector is 0.1.  The second inspector will `` miss '' five out of ten of the defective items that get past the first inspector.  What is the probability that a defective item gets by both inspectors? ## Solution= .05

group(items).

given(exactly(rel(0.1, items), items, pass1)).
given(exactly(rel(0.5, items, pass1), items, and(pass1,pass2))).

take(items, item, 1).

probability(all(item, and(pass1, pass2))).

property(outcome(1), [pass1]).
property(outcome(0), [pass2]).

