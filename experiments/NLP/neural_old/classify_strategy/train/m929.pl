% M929: There are eight shirts in your closet, four blue and four green.  You randomly select one to wear on Monday and then a different one on Tuesday.  What is the probability that you wear blue shirts both days? ## Solution= 0.214285714285714

group(rest(2-4)).

group(1-7).
size(1-7, 8).

given(exactly(4, 1-7, green)).
given(exactly(4, 1-7, blue)).

take(1-7, 2-4, 1).
take(rest(2-4), 2-13, 1).

probability(and(all(2-4, blue), all(2-13, blue))).

property(colour, [blue, green]).

