% M91: If a box contains 10 bulbs, of which just three are defective.  If a random sample of five bulbs is drawn, what is the probability that the sample contains no defective bulbs? ## Solution= 1/12

group(1-6).
size(1-6, 10).

given(exactly(3, 1-6, defective)).

take(1-6, 2-4, 5).

probability(none(2-4, defective)).

property(property, [defective]).

