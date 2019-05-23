% L16: A jar contains six marbles, identical except that three are blue and three are yellow.  Two marbles are taken from the jar, one with the right hand, one with the left.  What is the probability that both hands are holding blue marbles? ## Solution= 1/5

group(1-2).
size(1-2, 6).

given(exactly(3, 1-2, blue)).
given(exactly(3, 1-2, yellow)).

take(1-2, 2-2, 2).

probability(all(2-2, blue)).

property(color, [blue, yellow]).

