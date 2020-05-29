% M241: A manufacturer fits 2 switches to a circuit board.  The probability that a switch is faulty is 0.1.  What is the probability that circuit board works? ## Solution= 0.81

group(1-5).

given(exactly(rel(0.1,1-5), 1-5, faulty)).

take_wr(1-5, 3-8, 2).


probability(all(3-8, not(faulty))).

property(outcome(0), [faulty]).

