% L168: A person A fill in a row at random on a pools coupon, which means that for each of the 13 football games the probability is 1/3 for success.  Find the probability for A obtaining 13 successes. ## Solution= 6.2722547e-07

group(1-13).

given(exactly(rel(1/3,1-13), 1-13, success)).

take_wr(1-13, 1-4, 13).


probability(exactly(13, 1-4, success)).

property(outcome(0), [success]).

