% L243: Two balls are drawn without replacement from an urn that contains four green, six blue, and two white balls.  Evaluate the probability that both balls are white. ## Solution= 0.0151515151515152

group(1-9).

given(exactly(6, 1-9, blue)).
given(exactly(2, 1-9, white)).
given(exactly(4, 1-9, green)).

take(1-9, 1-2, 2).

probability(all(1-2, white)).

property(property, [blue, white, green]).

