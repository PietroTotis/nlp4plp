% H177: I have in my pocket ten coins.  Nine of them are ordinary coins with equal chances of coming up head and tail when tossed and the tenth has two heads.  If I take one of the coins at random from my pocket, what is the probability that it is the coin with two heads? ## Solution= 0.1

group(1-5).

given(exactly(1, 1-5, two)).
given(exactly(9, 1-5, ordinary)).

take(1-5, 3-7, 1).

probability(all(3-7, two)).

property(ordinary, [ordinary, two]).

