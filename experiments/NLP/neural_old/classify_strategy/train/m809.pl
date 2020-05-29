% M809: Ten percent of the baseballs manufactured by a factory are defective.  If two baseballs are selected at random from those produced by the company, what is the probability that at least one of the baseballs is defective? ## Solution= 0.19

group(1-5).

given(exactly(rel(10/100, 1-5), 1-5, defective)).

take(1-5, 2-3, 2).

probability(atleast(1, 2-3, defective)).

property(property, [defective]).

