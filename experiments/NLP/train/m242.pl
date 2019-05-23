% M242: A manufacturer fits 2 switches to a circuit board.  The probability that a switch is faulty is 0.1.  What is the probability that circuit board does not work? ## Solution= 0.19

group(2-5).

given(exactly(rel(0.1,2-5), 2-5, faulty)).

take_wr(2-5, 3-10, 2).


probability(some(3-10, faulty)).

property(outcome(0), [faulty]).

