% L1149: On any given day, a certain machine has either no malfunctions or exactly one malfunction.  The probability of malfunction on any given day is 0.40.  Machine malfunctions on different days are mutually independent.  Calculate the probability that the machine has its third malfunction on the fifth day, given that the machine has not had three malfunctions in the first three days. ## Solution= 0.14769231

group(4-6).

given(exactly(rel(0.4,4-6), 4-6, malfunction)).

take_wr(4-6, 4-7, 5).
observe(not(and(and(nth(1, 4-7, malfunction), nth(2, 4-7, malfunction)), nth(3, 4-7, malfunction)))).


probability(and(nth(5, 4-7, malfunction), exactly(3, 4-7, malfunction))).

property(outcome(0), [malfunction]).

