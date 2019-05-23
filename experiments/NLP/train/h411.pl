% H411: The probability that A solves the problem is 2/3 and that B solves the problem is 3/4.  What is the probability that exactly one of them solves the problem? ## Solution= 0.416666666666667

group(1-4).

given(exactly(rel(2/3,1-4), 1-4, solve)).
group(1-12).

given(exactly(rel(3/4,1-12), 1-12, solve)).

take_wr(1-12, 2-12-0, 1).
take_wr(1-4, 2-12-1, 1).
union(2-12, [2-12-0,2-12-1]).


probability(exactly(1, 2-12, solve)).

property(outcome(0), [solve]).

