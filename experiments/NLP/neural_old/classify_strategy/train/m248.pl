% M248: A fair spinner can land on either blue or yellow.  The probability that it lands on yellow when it is spun is 0.3.  If it is spun 3 times, what is the probability of getting exactly 1 blue? ## Solution= 0.189

group(1-3).

given(exactly(rel(0.3,1-3), 1-3, yellow)).

take_wr(1-3, 3-4, 3).


probability(exactly(1, 3-4, not(yellow))).

property(outcome(0), [yellow]).

