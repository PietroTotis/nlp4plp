% L349:  In a binary communication channel, 0s and 1s are transmitted with equal probability.  The probability that a 0 is correctly received, as a 0, is 0.95.  The probability that a 1 is correctly received, as a 1, is 0.99.  Suppose we receive a 0, what is the probability that, in fact, a 1 was sent? ## Solution= 1/96

group(channel).
given(exactly(rel(1/2, channel), channel, send_1)).
given(exactly(rel(1/2, channel), channel, send_0)).

given(exactly(rel(0.99, channel, send_1), channel, and(send_1, receive_1))).
given(exactly(rel(0.95, channel, send_0), channel, and(send_0, receive_0))).

% Why do we need these?
given(exactly(rel(0.01, channel, send_1), channel, and(send_1, receive_0))).
given(exactly(rel(0.05, channel, send_0), channel, and(send_0, receive_1))).


take(channel, bit, 1).

observe(all(bit, receive_0)).
probability(all(bit, send_1)).

property(send, [send_0, send_1]).
property(receive, [receive_0, receive_1]).
