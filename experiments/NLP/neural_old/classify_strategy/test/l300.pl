% L300: For the production of specific screws, it is known that on average 5 percent are defective.  If 10 screws are packed in a box, what is the probability that one finds two defective pieces in a box? ## Solution= 0.0746347985200195

group(2-3).

given(exactly(rel(5/100,2-3), 2-3, defective)).

take_wr(2-3, 2-5, 10).


probability(exactly(2, 2-5, defective)).

property(property(0), [defective]).

