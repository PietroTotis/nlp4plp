% M164: The game show contestant spins a spinner with the letters A, B, C, D, E on it, then either an easy or hard question is picked randomly for her.  What is the probability that the spinner will stop on the letter E and she is given an easy question? ## Solution= 1/10

group(1-29).
size(1-29, 2).

given(exactly(1, 1-29, easy)).
given(exactly(1, 1-29, hard)).
group(1-7).
size(1-7, 5).

given(exactly(1, 1-7, a)).
given(exactly(1, 1-7, d)).
given(exactly(1, 1-7, b)).
given(exactly(1, 1-7, e)).
given(exactly(1, 1-7, c)).

take_wr(1-7, 1-5, 1).

take_wr(1-29, 1-31, 1).


probability(and(all(1-5, e), all(1-31, easy))).

property(outcome(1), [hard, easy]).
property(outcome(0), [a, c, b, e, d]).

