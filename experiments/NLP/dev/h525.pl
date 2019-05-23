% H525: At a carnival, the probability that a boy will win the 100 m event is 1/10, and the probability he wins the 200 m event is 1/8.  Find the probability that he wins one of these events ## Solution= 1/5

group(1-25).

given(exactly(rel(1/8,1-25), 1-25, win)).
group(1-13).

given(exactly(rel(1/10,1-13), 1-13, win)).

take_wr(1-25, 1-3-0, 1).
take_wr(1-13, 1-3-1, 1).
union(1-3, [1-3-0,1-3-1]).


probability(exactly(1, 1-3, win)).

property(outcome(0), [win]).

