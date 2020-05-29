% L465: A lab network consisting of 20 computers was attacked by a computer virus.  This virus enters each computer with probability 0.4, independently of other computers.  Find the probability that the virus enters at least 10 computers. ## Solution= 0.2446628

group(1-7).

given(exactly(rel(0.4,1-7), 1-7, virus)).

take_wr(1-7, 1-9, 20).


probability(atleast(10, 1-9, virus)).

property(outcome(0), [virus]).

