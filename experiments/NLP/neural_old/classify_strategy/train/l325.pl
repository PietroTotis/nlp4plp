% L325: Suppose that the suicide rate in a certain state is four suicides per one million inhabitants per month.  Find the probability that in a certain town of population 500000 there will be at most four suicides in a month. ## Solution= 0.07

group(1-16).

given(exactly(rel(4/1000000,1-16), 1-16, suicide)).

take_wr(1-16, 2-18, 500000).


probability(atmost(4, 2-18, suicide)).

property(outcome(0), [suicide]).

