% L348:  In a binary transmission channel, a 1 is transmitted with probability 2/3 and a 0 with probability 1/3.  The conditional probability of receiving a 1 when a 1 was sent is 0.95, the conditional probability of receiving a 0 when a 0 was sent is 0.90.  Given that a 1 is received, what is the probability that a 1 was transmitted? ## Solution= 0.95

group(channel).
given(exactly(rel(2/3, channel), channel, send_1)).
given(exactly(rel(1/3, channel), channel, send_0)).

given(exactly(rel(0.95, channel, send_1), channel, and(send_1, receive_1))).
given(exactly(rel(0.90, channel, send_0), channel, and(send_0, receive_0))).

% Why do we need these?
given(exactly(rel(0.05, channel, send_1), channel, and(send_1, receive_0))).
given(exactly(rel(0.10, channel, send_0), channel, and(send_0, receive_1))).


take(channel, bit, 1).

observe(all(bit, receive_1)).
probability(all(bit, send_1)).

property(send, [send_0, send_1]).
property(receive, [receive_0, receive_1]).

