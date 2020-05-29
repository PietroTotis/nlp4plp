% H412: The probability that A tells the truth is 1/4 and the probability that B tells the truth is 2/5.  What is the probability that their answers to a yes/no type of question contradicts? ## Solution= 9/20

group(1-14).

given(exactly(rel(2/5,1-14), 1-14, truth)).
group(1-4).

given(exactly(rel(1/4,1-4), 1-4, truth)).

take_wr(1-14, 2-7-0, 1).
take_wr(1-4, 2-7-1, 1).
union(2-7, [2-7-0,2-7-1]).


probability(all_diff(2-7,outcome(0))).

property(outcome(0), [truth]).

