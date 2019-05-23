% H855: There are three types of animals in a laboratory: 15 type I, 13 type II, and 12 type III.  Animals of type I react to a particular stimulus in 5 seconds, animals of types II and III react to the same stimulus in 4.5 and 6.2 seconds, respectively.  A psychologist selects 10 of these animals at random and finds that exactly four of them react to this stimulus in 6.2 seconds.  What is the probability that at least two of them react to the same stimulus in 4.5 seconds? ## Solution= .883

group(1-6).

given(exactly(12, 1-6, and(6.2, iii))).
given(exactly(13, 1-6, and(4.5, ii))).
given(exactly(15, 1-6, and(5, i))).

take(1-6, 3-4, 10).
observe(exactly(4, 3-4, 6.2)).

probability(atleast(2, 3-4, 4.5)).

property(reaction_time, [4.5, 5, 6.2]).
property(type, [ii, i, iii]).

