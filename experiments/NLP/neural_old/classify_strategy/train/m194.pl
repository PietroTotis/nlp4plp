% M194: A box contains 8 good light bulbs and 4 that are defective.  If three bulbs are randomly selected from the box without replacement, what is the probability that at least one will be defective? ## Solution= 0.745454545454545

group(1-2).

given(exactly(8, 1-2, good)).
given(exactly(4, 1-2, defective)).

take(1-2, 2-3, 3).

probability(atleast(1, 2-3, defective)).

property(property, [good, defective]).

