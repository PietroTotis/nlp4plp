% L1145: An electronic system contains three cooling components that operate independently.  The probability of each component 's failure is 0.05.  The system will overheat if and only if at least two components fail.  Calculate the probability that the system will overheat. ## Solution= 0.00725

group(1-7).

given(exactly(rel(0.05,1-7), 1-7, failure)).

take_wr(1-7, 4-8, 3).


probability(atleast(2, 4-8, failure)).

property(outcome(0), [failure]).

