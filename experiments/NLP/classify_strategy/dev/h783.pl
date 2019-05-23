% H783: Given that 10 percent of the population is left-handed, find the probability that out of 15 people, there will be, at least three left-handed students. ## Solution= 0.18406107

group(1-9).

given(exactly(rel(10/100,1-9), 1-9, left-handed)).

take_wr(1-9, 1-18, 15).


probability(atleast(3, 1-18, left-handed)).

property(outcome(0), [left-handed]).

