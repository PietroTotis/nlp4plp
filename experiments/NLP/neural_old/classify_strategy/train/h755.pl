% H755: A homeowner plants 6 bulbs selected at random from a box containing 5 tulip bulbs and 4 daffodil bulbs.  What is the probability that he planted 2 daffodil bulbs and 4 tulip bulbs? ## Solution= 5/14

group(1-11).

given(exactly(5, 1-11, tulip)).
given(exactly(4, 1-11, daffodil)).

take(1-11, 1-5, 6).

probability(and(exactly(2, 1-5, daffodil), exactly(4, 1-5, tulip))).

property(property, [tulip, daffodil]).

