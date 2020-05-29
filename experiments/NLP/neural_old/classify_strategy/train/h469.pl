% H469: Helen is wondering how to plan for the weekend.  She will get a letter from home with money with probability 0.05.  There is a probability of 0.85 that she will get a call from Jim at SMU in Dallas.  There is also a probability of 0.5 that William will ask for a date.  What is the probability she will get money and Jim will not call or that both Jim will call and William will ask for a date? ## Solution= .4325

group(4-14).

given(exactly(rel(.5,4-14), 4-14, ask)).
group(3-14).

given(exactly(rel(.85,3-14), 3-14, call)).
group(2-9).

given(exactly(rel(0.05,2-9), 2-9, money)).

take_wr(3-14, 1-9-0, 1).
take_wr(2-9, 1-9-1, 1).
take_wr(4-14, 1-9-2, 1).
union(1-9, [1-9-0,1-9-1,1-9-2]).


probability(or(and(some(1-9, money), none(1-9, call)), and(some(1-9, call), some(1-9, ask)))).

property(outcome(2), [ask]).
property(outcome(1), [money]).
property(outcome(0), [call]).

