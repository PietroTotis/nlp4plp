% L466: A lab network consisting of 20 computers was attacked by a computer virus.  This virus enters each computer with probability 0.4, independently of other computers.  A computer manager checks the lab computers, one after another, to see if they were infected by the virus.  What is the probability that she has to test at least 6 computers to find the first infected one? ## Solution= 243/3125

group(4-13).

given(exactly(rel(0.4,4-13), 4-13, virus)).

take_wr(4-13, 4-9, 5).


probability(all(4-9, not(virus))).

property(outcome(0), [virus]).

