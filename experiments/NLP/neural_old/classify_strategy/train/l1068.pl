% L1068: A mattress store sells only king, queen and twin-size mattresses.  Sales records at the store indicate that one-fourth as many queen-size mattresses are sold as king and twin-size mattresses combined.  Records also indicate that three times as many king-size mattresses are sold as twin-size mattresses.  Calculate the probability that the next mattress sold is either king or queen - size. ## Solution= 0.8

group(4-7).

given(exactly(rel(1/5,4-7), 4-7, twin-size)).
given(exactly(rel(1/5,4-7), 4-7, queen-size)).
given(exactly(rel(3/5,4-7), 4-7, king)).

take_wr(4-7, 4-8, 1).


probability(all(4-8, or(king, queen-size))).

property(outcome(0), [king, twin-size, queen-size]).

