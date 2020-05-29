% H879: In data communications, a message transmitted from one end is subject to various sources of distortion and may be received erroneously at the other end.  Suppose that a message of 64 bits is transmitted through a medium.  If each bit is received incorrectly with probability 0.0001 independently of the other bits, what is the probability that the message received is free of error? ## Solution= 0.99362012

group(3-3).

given(exactly(rel(.0001,3-3), 3-3, incorrectly)).

take_wr(3-3, 2-7, 64).


probability(all(2-7, not(incorrectly))).

property(outcome(0), [incorrectly]).

