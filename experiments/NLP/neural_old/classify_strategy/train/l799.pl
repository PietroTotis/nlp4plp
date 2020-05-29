% L799: The probability of husband 's selection is 1/7 and that of wife 's selection is 1/5.  What is the probability that only one of them will be selected? ## Solution= 2/7

group(1-4).

given(exactly(rel(1/7,1-4), 1-4, selection)).
group(1-12).

given(exactly(rel(1/5,1-12), 1-12, selection)).

take_wr(1-12, 2-12-0, 1).
take_wr(1-4, 2-12-1, 1).
union(2-12, [2-12-0,2-12-1]).


probability(exactly(1, 2-12, selection)).

property(outcome(0), [selection]).

