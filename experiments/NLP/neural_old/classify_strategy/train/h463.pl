% H463: A chandelier has seven light bulbs arranged around the circumference of a circle.  By the end of a given year, each will have burnt out with probability 1/2.  Assuming that they do so independently, what is the probability that four or more bulbs will have burnt out? ## Solution= 1/2

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, burn)).
given(exactly(1, 1-6, v(1-6,0))).

take_wr(1-6, 1-2, 7).


probability(atleast(4, 1-2, burn)).

property(outcome(0), [burn, v(1-6,0)]).

