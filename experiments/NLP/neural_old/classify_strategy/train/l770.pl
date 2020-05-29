% L770: At a baby shower, we started discussing baby statistics.  One of the women told us she had heard a report that for every 100 babies born, there were 6 more boys than girls.  If we were to randomly pick a child from a representative group, what is the probability of picking a girl? ## Solution= 0.47

group(3-8).

given(exactly(rel(47/100,3-8), 3-8, girl)).
given(exactly(rel(53/100,3-8), 3-8, boy)).

take_wr(3-8, 3-6, 1).


probability(all(3-6, girl)).

property(outcome(0), [boy, girl]).

