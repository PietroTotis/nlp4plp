% L257: In the lottery known as 6/49, first 6 balls are drawn at random and without replacement among 49 balls numbered from 1 to 49.  Next, a seventh ball, the bonus number, is drawn at random among the 43 remaining balls.  A woman selected what she thinks would be the six winning numbers for the next draw.  What is the probability that this woman actually did not select any of the seven balls that will be drawn, including the bonus number? ## Solution= 0.375132653347269

group(1-20).
size(1-20, 49).

given(exactly(6, 1-20, win)).
given(exactly(1, 1-20, bonus)).

take(1-20, 3-12, 6).

probability(all(3-12, and(not(win), not(bonus)))).

property(property, [bonus, win]).

