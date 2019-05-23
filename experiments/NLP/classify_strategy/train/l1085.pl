% L1085: A machine produces small cans that are used for baked beans.  The probability that the can is in perfect shape is 0.9.  The probability of the can having an unnoticeable dent is 0.02.  The probability that the can is obviously dented is 0.08.  Produced cans get passed through an automatic inspection machine, which is able to detect obviously dented cans and discard them.  What is the probability that a can that gets shipped for use will be of perfect shape? ## Solution= 45/46

group(6-7).

given(exactly(rel(0.08,6-7), 6-7, obviously)).
given(exactly(rel(0.02,6-7), 6-7, unnoticeable)).
given(exactly(rel(0.9,6-7), 6-7, perfect)).

take_wr(6-7, 6-10, 1).
observe(all(6-10, not(obviously))).


probability(all(6-10, perfect)).

property(outcome(0), [perfect, unnoticeable, obviously]).

