% M317: If five cards are drawn without replacement from a standard deck of 52, containing 13 diamond cards, what is the probability that all the cards are diamonds? ## Solution= 0.000495198079231693

group(1-11).
size(1-11, 52).

given(exactly(13, 1-11, diamond)).

take(1-11, 1-3, 5).

probability(all(1-3, diamond)).

property(suit, [diamond]).

