% L6: A card is drawn at random from a deck of cards.  Find the probability of getting a queen. ## Solution= 0.0769230769230769

group(1-2).
size(1-2, 13).

given(exactly(1, 1-2, v(1-2,9))).
given(exactly(1, 1-2, v(1-2,5))).
given(exactly(1, 1-2, queen)).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, v(1-2,6))).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,8))).
given(exactly(1, 1-2, v(1-2,4))).
given(exactly(1, 1-2, v(1-2,11))).
given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, v(1-2,7))).
given(exactly(1, 1-2, v(1-2,10))).

take_wr(1-2, 1-4, 1).


probability(all(1-4, queen)).

property(outcome(0), [v(1-2,8), v(1-2,9), v(1-2,10), v(1-2,6), v(1-2,7), queen, v(1-2,4), v(1-2,5), v(1-2,2), v(1-2,3), v(1-2,11), v(1-2,0), v(1-2,1)]).

