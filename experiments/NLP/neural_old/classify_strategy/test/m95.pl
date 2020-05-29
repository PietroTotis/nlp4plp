% M95:  In a race, the odd favour of cars P, Q, R, S are 1:3, 1:4, 1:5 and 1:6 respectively.  Find the probability that one of them wins the race. ## Solution= 319/420

group(1-3).
size(1-3, 4).

given(exactly(rel(1/4, 1-3), 1-3, p)).
given(exactly(rel(1/5, 1-3), 1-3, q)).
given(exactly(rel(1/6, 1-3), 1-3, r)).
given(exactly(rel(1/7, 1-3), 1-3, s)).

take(1-3, win, 1).

probability(all(win, or(p, or(q, or(r, s))))).

property(outcome, [q, p, s, r]).
