% M911: A bag contains 17 blue coins and 23 grey coins.  If two coins are picked at random one after the other with replacement, what is the probability that the first coin is blue and the second is grey? ## Solution= 0.244375

group(1-2).

given(exactly(17, 1-2, blue)).
given(exactly(23, 1-2, grey)).

take_wr(1-2, 2-3, 2).

probability(and(nth(1, 2-3, blue), nth(2, 2-3, grey))).

property(colour, [blue, grey]).

