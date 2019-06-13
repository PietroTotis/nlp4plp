% H678: For an upcoming civil trial, 25 people are called for jury duty.  Of these, 15 are men and 10 are women.  Six people are needed for the jury.  If the jury members are selected at random, what is the probability that three men and three women will be on the jury? ## Solution= 0.3083004

group(1-8).
size(1-8, 25).

given(exactly(10, 1-8, woman)).
given(exactly(15, 1-8, man)).

take(1-8, 3-2, 6).

probability(and(exactly(3, 3-2, man), exactly(3, 3-2, woman))).

property(property, [woman, man]).
