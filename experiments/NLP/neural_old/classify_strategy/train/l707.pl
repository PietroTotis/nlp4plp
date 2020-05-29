% L707: A store has 6 TV Graphic magazines and 8 Newstime magazines on the counter.  If two customers purchased a magazine, find the probability that one of each magazine was purchased. ## Solution= 48/91

group(1-2).

given(exactly(8, 1-2, newstime)).
given(exactly(6, 1-2, graphic)).

take(1-2, 2-3, 2).

probability(and(exactly(1, 2-3, graphic), exactly(1, 2-3, newstime))).

property(property, [newstime, graphic]).

