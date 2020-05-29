% M366: In a shuffled deck, there are 52 cards in four suits, 13 in each suit: heart, diamond, club and spade.  What is the probability that the top four cards are all of the same suit? ## Solution= 0.0105642256902761

group(1-4).
size(1-4, 52).

given(exactly(13, 1-4, spade)).
given(exactly(13, 1-4, heart)).
given(exactly(13, 1-4, club)).
given(exactly(13, 1-4, diamond)).

take(1-4, 2-9, 4).

probability(all_same(2-9,suit)).

property(suit, [club, heart, diamond, spade]).

