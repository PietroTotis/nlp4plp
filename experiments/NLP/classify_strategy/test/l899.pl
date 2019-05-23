% L899: A teacher keeps a jar full of different flavored jelly beans on her desk and hands them out randomly to her class.  But one particularly picky student likes only the licorice - flavored ones.  If the jar has 50 beans in all 15 licorice, 10 cherry, 20 watermelon, and 5 blueberry.  What is the probability that the first three jelly beans picked out are licorice flavored? ## Solution= 0.0232142857142857

group(3-3).
size(3-3, 50).

given(exactly(5, 3-3, blueberry)).
given(exactly(20, 3-3, watermelon)).
given(exactly(15, 3-3, licorice)).
given(exactly(10, 3-3, cherry)).

take(3-3, 4-10, 3).

probability(all(4-10, licorice)).

property(property, [watermelon, cherry, licorice, blueberry]).

