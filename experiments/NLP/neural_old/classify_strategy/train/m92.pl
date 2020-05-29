% M92: Two brother X and Y appeared for an exam.  The probability of selection of X is 1/7 and that of Y is 2/9.  What is the probability that both of them are selected? ## Solution= 2/63

group(1-3).

given(exactly(rel(1/7,1-3), 1-3, selection)).
group(1-5).

given(exactly(rel(2/9,1-5), 1-5, selection)).

take_wr(1-3, 3-10-0, 1).
take_wr(1-5, 3-10-1, 1).
union(3-10, [3-10-0,3-10-1]).


probability(all(3-10, selection)).

property(outcome(0), [selection]).

