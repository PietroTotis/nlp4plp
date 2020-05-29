% H618: A hat contains 20 tickets, each with a different number from 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 and 20.  If 4 tickets are drawn at random, what is the probability that the largest number is 15 and the smallest number is 9? ## Solution= 2/969

group(1-5).
size(1-5, 20).

given(exactly(1, 1-5, 9)).
given(exactly(1, 1-5, 14)).
given(exactly(1, 1-5, 17)).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 15)).
given(exactly(1, 1-5, 13)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 18)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 19)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 7)).
given(exactly(1, 1-5, 12)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 10)).
given(exactly(1, 1-5, 3)).
given(exactly(1, 1-5, 11)).
given(exactly(1, 1-5, 20)).
given(exactly(1, 1-5, 8)).
given(exactly(1, 1-5, 16)).

take(1-5, 2-5, 4).


probability(and(aggcmp(2-5,outcome(0),min,=:=,9), aggcmp(2-5,outcome(0),max,=:=,15))).

property(outcome(0), [11, 10, 13, 12, 15, 14, 17, 16, 19, 18, 20, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

