% M67: You spin a spinner with 6 shaded sectors and 6 white sectors, equal in size.  What is the probability that it lands on a shaded sector? ## Solution= 1/2

group(1-4).

given(exactly(6, 1-4, white)).
given(exactly(6, 1-4, shaded)).

take(1-4, 2-11, 1).

probability(all(2-11, shaded)).

property(outcome, [white, shaded]).

