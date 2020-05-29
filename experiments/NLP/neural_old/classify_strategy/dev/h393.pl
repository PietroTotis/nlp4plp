% H393: In Ms. Smith 's class, each student averages one day absent out of thirty.  What is the probability that out of any two students chosen at random, one student will be absent while the other is present? ## Solution= 0.064444444

group(1-12).

given(exactly(rel(1/30,1-12), 1-12, absent)).

take_wr(1-12, 2-10, 2).


probability(exactly(1, 2-10, absent)).

property(outcome(0), [absent]).

