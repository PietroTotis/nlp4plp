% L686: Eighty-eight percent of U.S. children are covered by some type of health insurance.  If 4 children are selected at random, what is the probability that none are covered? ## Solution= 0.00020736

group(2-3).

given(exactly(rel(88/100,2-3), 2-3, insurance)).

take_wr(2-3, 2-5, 4).


probability(all(2-5, not(insurance))).

property(outcome(0), [insurance]).

