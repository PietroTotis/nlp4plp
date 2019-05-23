% H9: A machine contains 2 identical parallel components.  As soon as one of the components works, the machine works.  The confidence level of the component equals 90 percent.  Compute the confidence level of the machine. ## Solution= .99

group(2-7).

given(exactly(rel(.9,2-7), 2-7, work)).

take_wr(2-7, 1-2, 2).


probability(atleast(1, 1-2, work)).

property(outcome(0), [work]).

