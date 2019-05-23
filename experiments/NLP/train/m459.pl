% M459: A bag contains red and blue cards.  The probability of drawing a red card is 2/5.  What is the probability of drawing a blue card? ## Solution= 3/5

group(1-7).

given(exactly(rel(2/5,1-7), 1-7, red)).
given(exactly(u, 1-7, blue)).

take_wr(1-7, 3-6, 1).


probability(all(3-6, blue)).

property(outcome(0), [blue, red]).

