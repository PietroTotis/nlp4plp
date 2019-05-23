% M319: Five cards are drawn without replacement from a standard deck of 52.  Each deck contains 13 diamond cards.  What is the probability that all the cards are diamonds, given that the first four were diamonds? ## Solution= 0.1875

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, diamond)).

take(1-10, 1-2, 5).
observe(and(and(nth(1, 1-2, diamond), nth(2, 1-2, diamond)), and(nth(3, 1-2, diamond), nth(4, 1-2, diamond)))).

probability(nth(5, 1-2, diamond)).

property(suit, [diamond]).

