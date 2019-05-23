% H646: A store has 80 modems in its inventory ; 30 came from source A and 50 came from source B.  Of the modems from source A, 20 percent are defective.  Of the modems from source B, 8 percent are defective.  Calculate the probability that exactly two out of a random sample of five modems from the store 's inventory are defective. ## Solution= 0.10246665

group(1-5).
size(1-5, 80).

given(exactly(rel(20/100, 1-5, a), 1-5, and(a, defective))).
given(exactly(rel(8/100, 1-5, b), 1-5, and(b, defective))).
given(exactly(50, 1-5, b)).
given(exactly(30, 1-5, a)).

take(1-5, 4-14, 5).

probability(exactly(2, 4-14, defective)).

property(source, [a, b]).
property(defective, [defective]).

