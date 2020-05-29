% L598: An ordinary deck of 52 cards is shuffled.  The deck contains 13 hearts, 13 diamonds, 13 clubs and 13 spades.  What is the probability that the top four cards have different suits? ## Solution= 0.1055

group(1-3).
size(1-3, 52).

given(exactly(13, 1-3, club)).
given(exactly(13, 1-3, spade)).
given(exactly(13, 1-3, diamond)).
given(exactly(13, 1-3, hearts)).

take(1-3, 3-9, 4).

probability(all_diff(3-9,color)).

property(color, [club, hearts, diamond, spade]).

