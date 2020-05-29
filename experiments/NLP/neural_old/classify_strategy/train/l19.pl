% L19: You play a game in which, to win, you must roll a die, with six sides numbered 1, 2, 3, 4, 5 and 6, and get 3 or 4, toss a coin and get tails and select a card from an ordinary deck and get a red card.  What is the probability you will win? ## Solution= 1/12

group(1-15).
size(1-15, 6).

given(exactly(1, 1-15, 2)).
given(exactly(1, 1-15, 1)).
given(exactly(1, 1-15, 6)).
given(exactly(1, 1-15, 4)).
given(exactly(1, 1-15, 5)).
given(exactly(1, 1-15, 3)).
group(1-48).
size(1-48, 2).

given(exactly(1, 1-48, v(1-48,0))).
given(exactly(1, 1-48, red)).
group(1-41).
size(1-41, 2).

given(exactly(1, 1-41, v(1-41,0))).
given(exactly(1, 1-41, tails)).

take_wr(1-48, 1-46, 1).

take_wr(1-15, 1-13, 1).

take_wr(1-41, 1-39, 1).


probability(and(all(1-46, red), and(all(1-13, or(3, 4)), all(1-39, tails)))).

property(outcome(2), [v(1-41,0), tails]).
property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [v(1-48,0), red]).

