% H314: What is the probability that a card selected from a deck will be either an ace or a spade?  In a deck there are 3 aces that are not spades, 1 ace of spades, and 12 spades that are not aces. ## Solution= 4/13

group(1-11).
size(1-11, 52).

given(exactly(1, 1-11, and(ace, spade))).
given(exactly(13, 1-11, spade)).
given(exactly(4, 1-11, ace)).

take(1-11, 1-7, 1).

probability(all(1-7, or(ace, spade))).

property(value, [ace]).
property(suit, [spade]).

