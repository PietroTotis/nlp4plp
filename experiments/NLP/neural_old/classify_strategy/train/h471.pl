% H471: A company has three task forces trying to meet a deadline for a new device.  The groups work independently, with respective probabilities 0.8, 0.9, 0.75 of completing on time.  What is the probability at least one group completes on time? ## Solution= .9950

group(2-11).

given(exactly(rel(.9,2-11), 2-11, time)).
group(2-13).

given(exactly(rel(.75,2-13), 2-13, time)).
group(2-9).

given(exactly(rel(.8,2-9), 2-9, time)).

take_wr(2-11, 1-2-0, 1).
take_wr(2-13, 1-2-1, 1).
take_wr(2-9, 1-2-2, 1).
union(1-2, [1-2-0,1-2-1,1-2-2]).


probability(atleast(1, 1-2, time)).

property(outcome(0), [time]).

