% M402: A bag contains 10 black blocks and four white blocks.  What is the probability of selecting three black blocks from the bag without replacement? ## Solution= 0.32967032967033

group(1-2).

given(exactly(4, 1-2, white)).
given(exactly(10, 1-2, black)).

take(1-2, 2-9, 3).

probability(all(2-9, black)).

property(colour, [white, black]).

