% H239: A football team wins each week with probability 0.6 and loses with probability 0.4.  If we suppose that the outcomes of their 10 games are independent, what is the probability they will win exactly 8 games? ## Solution= 0.12093235

group(1-4).

given(exactly(rel(.6,1-4), 1-4, win)).
given(exactly(rel(.4,1-4), 1-4, lose)).

take_wr(1-4, 2-10, 10).


probability(exactly(8, 2-10, win)).

property(outcome(0), [win, lose]).

