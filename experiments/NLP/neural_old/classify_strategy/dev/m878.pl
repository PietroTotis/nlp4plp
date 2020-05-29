% M878: You put the numbers 2, 2, 3, 3, 3, and 8 on 6 different index cards.  Then, you put the cards in a bag.  What is the probability of pulling a card with the number 2? ## Solution= 1/3

group(3-8).
size(3-8, 6).

given(exactly(2, 3-8, 2)).
given(exactly(1, 3-8, 8)).
given(exactly(3, 3-8, 3)).

take_wr(3-8, 3-6, 1).


probability(all(3-6, 2)).

property(outcome(0), [8, 3, 2]).

