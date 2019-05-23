% H262: The probability that a pen manufactured by a company will be defective is 0.1.  If 12 such pens are selected at random, find the probability that exactly two will be defective. ## Solution= 0.23012777

group(1-5).

given(exactly(rel(.1,1-5), 1-5, defective)).

take_wr(1-5, 2-4, 12).


probability(exactly(2, 2-4, defective)).

property(outcome(0), [defective]).

