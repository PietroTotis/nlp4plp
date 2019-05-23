% M456: Two cards are drawn from a deck of 52 without replacement in succession.  In a deck, there are 4 aces.  What is the probability that the second card drawn is an ace, given that the first can drawn was an ace? ## Solution= 0.0588235294117647

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, ace)).

take(1-7, 1-2, 2).
observe(nth(1, 1-2, ace)).

probability(nth(2, 1-2, ace)).

property(card_value, [ace]).

