% L802: Sita appears in the interview for two posts A and B, selection for which are independent.  The probability of her selection for post A is 1/5 and for post B is 1/7.  Find the probability that she is selected for both the posts. ## Solution= 1/35

group(1-9).

given(exactly(rel(1/5,1-9), 1-9, selection)).
group(1-11).

given(exactly(rel(1/7,1-11), 1-11, selection)).

take_wr(1-11, 1-5-0, 1).
take_wr(1-9, 1-5-1, 1).
union(1-5, [1-5-0,1-5-1]).


probability(all(1-5, selection)).

property(outcome(0), [selection]).

