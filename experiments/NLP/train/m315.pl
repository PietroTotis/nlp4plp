% M315: If two cards are drawn without replacement from a standard deck of 52, containing 13 hearts, what is the probability that the second is a heart, given that the first is a heart? ## Solution= 0.235294117647059

group(1-11).
size(1-11, 52).

given(exactly(13, 1-11, heart)).

take(1-11, 1-3, 2).
observe(nth(1, 1-3, heart)).

probability(nth(2, 1-3, heart)).

property(suit, [heart]).

