% H241: A baseball player gets a hit with probability 0.3, a walk with probability 0.1, and an out with probability 0.6.  If he bats 4 times during a game and we assume that the outcomes are independent, what is the probability he will get 1 hit, 1 walk, and 2 outs? ## Solution= .1296

group(1-3).

given(exactly(rel(0.1, 1-3), 1-3, walk)).
given(exactly(rel(0.6, 1-3), 1-3, out)).
given(exactly(rel(0.3, 1-3), 1-3, hit)).

take(1-3, 2-3, 4).

probability(and(exactly(1, 2-3, hit), and(exactly(1, 2-3, walk), exactly(2, 2-3, out)))).

property(property, [walk, hit, out]).

