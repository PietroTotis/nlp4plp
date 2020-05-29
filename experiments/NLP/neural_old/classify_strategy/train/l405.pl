% L405: A card is drawn at random from an ordinary deck of 52 cards and replaced.  This is done a total of 5 independent times.  The deck contains one ace of spades.  What is the conditional probability of drawing the ace of spades exactly 4 times, given that this ace is drawn at least 4 times? ## Solution= 255/256

group(1-2).
size(1-2, 52).

given(exactly(1, 1-2, v(1-2,49))).
given(exactly(1, 1-2, v(1-2,26))).
given(exactly(1, 1-2, v(1-2,9))).
given(exactly(1, 1-2, v(1-2,41))).
given(exactly(1, 1-2, v(1-2,50))).
given(exactly(1, 1-2, v(1-2,47))).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, v(1-2,35))).
given(exactly(1, 1-2, v(1-2,40))).
given(exactly(1, 1-2, v(1-2,46))).
given(exactly(1, 1-2, v(1-2,23))).
given(exactly(1, 1-2, v(1-2,25))).
given(exactly(1, 1-2, v(1-2,4))).
given(exactly(1, 1-2, v(1-2,11))).
given(exactly(1, 1-2, v(1-2,39))).
given(exactly(1, 1-2, v(1-2,19))).
given(exactly(1, 1-2, v(1-2,33))).
given(exactly(1, 1-2, v(1-2,34))).
given(exactly(1, 1-2, v(1-2,43))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,42))).
given(exactly(1, 1-2, v(1-2,7))).
given(exactly(1, 1-2, v(1-2,22))).
given(exactly(1, 1-2, v(1-2,21))).
given(exactly(1, 1-2, v(1-2,37))).
given(exactly(1, 1-2, v(1-2,29))).
given(exactly(1, 1-2, ace)).
given(exactly(1, 1-2, v(1-2,38))).
given(exactly(1, 1-2, v(1-2,28))).
given(exactly(1, 1-2, v(1-2,32))).
given(exactly(1, 1-2, v(1-2,6))).
given(exactly(1, 1-2, v(1-2,30))).
given(exactly(1, 1-2, v(1-2,36))).
given(exactly(1, 1-2, v(1-2,12))).
given(exactly(1, 1-2, v(1-2,44))).
given(exactly(1, 1-2, v(1-2,14))).
given(exactly(1, 1-2, v(1-2,20))).
given(exactly(1, 1-2, v(1-2,13))).
given(exactly(1, 1-2, v(1-2,15))).
given(exactly(1, 1-2, v(1-2,45))).
given(exactly(1, 1-2, v(1-2,48))).
given(exactly(1, 1-2, v(1-2,5))).
given(exactly(1, 1-2, v(1-2,17))).
given(exactly(1, 1-2, v(1-2,27))).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,8))).
given(exactly(1, 1-2, v(1-2,16))).
given(exactly(1, 1-2, v(1-2,31))).
given(exactly(1, 1-2, v(1-2,18))).
given(exactly(1, 1-2, v(1-2,24))).
given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, v(1-2,10))).

take_wr(1-2, 1-4, 5).
observe(atleast(4, 1-4, ace)).


probability(exactly(4, 1-4, ace)).

property(outcome(0), [v(1-2,16), v(1-2,8), v(1-2,28), v(1-2,32), v(1-2,10), v(1-2,6), v(1-2,12), v(1-2,4), v(1-2,2), v(1-2,11), v(1-2,0), v(1-2,24), v(1-2,36), v(1-2,49), v(1-2,26), v(1-2,34), v(1-2,47), v(1-2,20), v(1-2,18), v(1-2,45), v(1-2,22), v(1-2,30), v(1-2,43), v(1-2,14), v(1-2,13), v(1-2,9), v(1-2,29), v(1-2,7), v(1-2,33), v(1-2,38), v(1-2,5), v(1-2,50), v(1-2,3), v(1-2,1), v(1-2,41), v(1-2,37), v(1-2,48), v(1-2,25), v(1-2,35), ace, v(1-2,46), v(1-2,27), v(1-2,19), v(1-2,44), v(1-2,21), v(1-2,39), v(1-2,31), v(1-2,42), v(1-2,23), v(1-2,15), v(1-2,40), v(1-2,17)]).

