% H648: The probability that a particular machine breaks down in any day is 0.20 and is independent of the breakdowns on any other day.  The machine can break down only once per day.  Calculate the probability that the machine breaks down two or more times in ten days. ## Solution= 0.62419036

group(1-6).

given(exactly(rel(0.20,1-6), 1-6, break)).

take_wr(1-6, 3-15, 10).


probability(atleast(2, 3-15, break)).

property(outcome(0), [break]).

