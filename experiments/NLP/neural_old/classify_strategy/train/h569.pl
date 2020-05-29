% H569: In a bag, there are three counters marked with the digit `` 3 '' and five counters marked with digit `` 2 ''.  Four counters are drawn out of the bag one at a time with replacement after each draw, find the probability that all counters drawn are marked with the digit `` 2 '' ## Solution= 625/4096

group(1-3).

given(exactly(5, 1-3, 2)).
given(exactly(3, 1-3, 3)).

take_wr(1-3, 2-2, 4).

probability(all(2-2, 2)).

property(property, [3, 2]).

