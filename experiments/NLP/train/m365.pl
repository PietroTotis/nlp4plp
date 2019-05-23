% M365: Using a standard deck of cards, containing 4 aces, what is the probability of drawing two aces without replacement? ## Solution= 0.00452488687782805

group(1-4).
size(1-4, 52).

given(exactly(4, 1-4, ace)).

take(1-4, 1-19, 2).

probability(all(1-19, ace)).

property(card_value, [ace]).

