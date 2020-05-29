% L78: There are 10 counters in a bag: 3 are red, 2 are blue and 5 are green.  The contents of the bag are shaken before Maxine randomly chooses one counter from the bag.  What is the probability that she does n't pick a red counter? ## Solution= 7/10

group(1-4).
size(1-4, 10).

given(exactly(3, 1-4, red)).
given(exactly(5, 1-4, green)).
given(exactly(2, 1-4, blue)).

take(1-4, 2-13, 1).

probability(none(2-13, red)).

property(color, [blue, green, red]).

