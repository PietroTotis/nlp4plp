% L307: Three winning tickets are drawn from an urn of 100 tickets.  What is the probability of winning for a person who buys 4 tickets? ## Solution= 0.116388373531231

group(1-8).
size(1-8, 100).

given(exactly(3, 1-8, win)).

take(1-8, 2-13, 4).

probability(atleast(1, 2-13, win)).

property(property, [win]).

