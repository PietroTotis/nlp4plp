% H895: A box of 30 diodes is known to contain five defective ones.  If two diodes are selected at random without replacement, what is the probability that at least one of these diodes is defective? ## Solution= 0.31034483

group(1-2).
size(1-2, 30).

given(exactly(5, 1-2, defective)).

take(1-2, 2-3, 2).

probability(atleast(1, 2-3, defective)).

property(property, [defective]).

