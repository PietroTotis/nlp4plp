% M755: A six-sided die is rolled and a card is selected from a standard 52-card deck.  What is the probability that both the die and the card show a six? ## Solution= 0.012820513

group(1-8).
size(1-8, 13).

given(exactly(1, 1-8, v(1-8,10))).
given(exactly(1, 1-8, v(1-8,7))).
given(exactly(1, 1-8, v(1-8,8))).
given(exactly(1, 1-8, v(1-8,9))).
given(exactly(1, 1-8, six)).
given(exactly(1, 1-8, v(1-8,3))).
given(exactly(1, 1-8, v(1-8,4))).
given(exactly(1, 1-8, v(1-8,0))).
given(exactly(1, 1-8, v(1-8,1))).
given(exactly(1, 1-8, v(1-8,11))).
given(exactly(1, 1-8, v(1-8,6))).
given(exactly(1, 1-8, v(1-8,2))).
given(exactly(1, 1-8, v(1-8,5))).
group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, six)).
given(exactly(1, 1-3, v(1-3,4))).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 2-12-0, 1).
take_wr(1-8, 2-12-1, 1).
union(2-12, [2-12-0,2-12-1]).


probability(all(2-12, six)).

property(outcome(0), [v(1-3,4), six, v(1-3,3), v(1-3,2), v(1-8,4), v(1-8,5), v(1-3,1), v(1-3,0), v(1-8,6), v(1-8,7), v(1-8,11), v(1-8,0), v(1-8,1), v(1-8,2), v(1-8,3), v(1-8,8), v(1-8,9), v(1-8,10)]).

