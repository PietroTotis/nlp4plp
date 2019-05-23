% M443: Each of the letters H E L L O is written on a card.  A card is chosen at random from the bag.  What is the probability of getting the letter ` L'? ## Solution= 2/5

group(2-2).
size(2-2, 5).

given(exactly(2, 2-2, l)).
given(exactly(1, 2-2, o)).
given(exactly(1, 2-2, e)).
given(exactly(1, 2-2, h)).

take_wr(2-2, 2-4, 1).


probability(all(2-4, l)).

property(outcome(0), [h, e, l, o]).

