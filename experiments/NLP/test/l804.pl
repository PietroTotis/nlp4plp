% L804: A draws two cards with replacement from a well-shuffled deck of 52 cards, containing 13 hearts, 13 spades, 13 clubs and 13 diamonds.  At the same time B throws a pair of 6-sided dice, labeled 1, 2, 3, 4, 5, and 6.  What is the probability that A gets both cards of the same suit and B gets a total of 6? ## Solution= 5/144

group(1-4).
size(1-4, 4).

given(exactly(1, 1-4, club)).
given(exactly(1, 1-4, spade)).
given(exactly(1, 1-4, diamond)).
given(exactly(1, 1-4, hearts)).
group(2-11).
size(2-11, 6).

given(exactly(1, 2-11, 2)).
given(exactly(1, 2-11, 1)).
given(exactly(1, 2-11, 6)).
given(exactly(1, 2-11, 4)).
given(exactly(1, 2-11, 5)).
given(exactly(1, 2-11, 3)).

take_wr(1-4, 1-2, 2).

take_wr(2-11, 2-6, 2).


probability(and(all_same(1-2,outcome(0)), aggcmp(2-6,outcome(1),sum,=:=,6))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [club, hearts, diamond, spade]).

