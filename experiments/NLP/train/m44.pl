% M44:  In a playoff series, the probability that Team A wins over Team B is 3/5, and the probability that Team C wins over Team D is 4/7.  If the probabilities are independent, what is the probability that Team A wins and Team C loses? ## Solution= 0.25714286

group(gameAB).
group(gameCD).

given(exactly(rel(3/5, gameAB), gameAB, win)).
given(exactly(rel(4/7, gameCD), gameCD, win)).

take_wr(gameAB, ab, 1).
take_wr(gameCD, cd, 1).

probability(and(all(ab, win), all(cd, not(win)))).

property(outcome(0), [win]).
