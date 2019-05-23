% L847: In a hurdle race, a player has to cross 10 hurdles.  The probability that he will clear each hurdle is 5/6.  What is the probability that he will knock down fewer than 2 hurdles? ## Solution= 5^10/(2*6^9)

group(1-12).

given(exactly(rel(5/6,1-12), 1-12, clear)).

take_wr(1-12, 1-10, 10).


probability(less_than(2, 1-10, not(clear))).

property(outcome(0), [clear]).

