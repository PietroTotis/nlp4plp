% M524: A single card is chosen at random from a standard deck of 52 playing cards.  What is the probability of choosing a card that is not a black card? ## Solution= 1/2

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, black)).

take_wr(1-3, 1-5, 1).


probability(all(1-5, not(black))).

property(outcome(0), [v(1-3,0), black]).

