% L835: The probability that a bulb produced by a factory will fuse after 150 days of use is 0.05.  What is the probability that out of 5 such bulbs none will fuse after 150 days of use. ## Solution= 0.95^5

group(2-10).

given(exactly(rel(0.05,2-10), 2-10, fuse)).

take_wr(2-10, 1-6, 5).


probability(all(1-6, not(fuse))).

property(outcome(0), [fuse]).

