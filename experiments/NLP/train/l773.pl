% L773: An oil company conducts a geological study that indicates that an exploratory oil well in a certain region should have a 20 percent chance of striking oil.  What is the probability that the first strike comes on the third well drilled? ## Solution= 0.128

group(2-13).

given(exactly(rel(0.2,2-13), 2-13, oil)).

take_wr(2-13, 2-14, 3).


probability(and(and(nth(1, 2-14, not(oil)), nth(2, 2-14, not(oil))), nth(3, 2-14, oil))).

property(outcome(0), [oil]).

