% L1055: A large classroom has 100 foreign students, 30 of whom speak spanish.  25 of the students speak italian, while 55 do not speak neither spanish nor italian.  A student who speak italian is chosen at random.  What is the probability that he/she speaks spanish? ## Solution= 0.4

group(1-7).
size(1-7, 100).

given(exactly(25, 1-7, italian)).
given(exactly(30, 1-7, spanish)).
given(exactly(55, 1-7, and(neither, nor))).

take(1-7, 3-2, 1).
observe(all(3-2, italian)).

probability(all(3-2, spanish)).

property(spanish, [neither, spanish]).
property(italian, [nor, italian]).

