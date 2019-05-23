% L501: An airport bus deposits 25 passengers at 7 stops, stops 1, 2, 3, 4, 5, 6 and 7.  Each passenger is as likely to get off at any stop as at any other, and the passengers act independently of one another.  The bus makes a stop only if someone wants to get off.  What is the probability that somebody gets off at each stop? ## Solution= 0.8562

group(1-6).
size(1-6, 7).

given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 7)).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 3)).

take_wr(1-6, 1-4, 25).


probability(and(and(and(atleast(1, 1-4, 1), atleast(1, 1-4, 2)), and(atleast(1, 1-4, 3), atleast(1, 1-4, 4))), and(and(atleast(1, 1-4, 5), atleast(1, 1-4, 6)), atleast(1, 1-4, 7)))).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6]).

