% H498: One bag contains 6 white balls and 4 black balls, and a second bag contains 5 white balls and 4 black balls.  One ball is drawn at random from the first bag and is placed unseen in the second bag.  If the ball from the second bag is black, what is the probability that the ball from the first bag was white? ## Solution= 6/11

group(2-18).

group(1-2).

group(1-15).

given(exactly(6, 1-2, white)).
given(exactly(4, 1-2, black)).
given(exactly(5, 1-15, white)).
given(exactly(4, 1-15, black)).

take(1-2, 2-2, 1).
take(2-18, 3-3, 1).
observe(all(3-3, black)).

union(2-18, [2-2, 1-15]).
probability(all(2-2, white)).

property(color, [white, black]).

