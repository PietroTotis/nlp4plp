% M247: A fair spinner can land on either blue or yellow.  The probability that it lands on yellow when it is spun is 0.3.  If it is spun 3 times, what is the probability of getting all same colours for the 3 spinners? ## Solution= 0.37

group(1-3).

given(exactly(rel(0.3,1-3), 1-3, yellow)).

take_wr(1-3, 3-4, 3).


probability(all_same(3-4,outcome(0))).

property(outcome(0), [yellow]).

