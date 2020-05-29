% H578: It is known that, in the long run, 7 out of 10 students from year 12 of a class will enter university.  Find the probability that out of a group of 5 students chosen at random from this form, any number up to and including 3 will enter ## Solution= 0.47178

group(1-23).

given(exactly(rel(7/10,1-23), 1-23, university)).

take_wr(1-23, 2-11, 5).


probability(atmost(3, 2-11, university)).

property(outcome(0), [university]).

