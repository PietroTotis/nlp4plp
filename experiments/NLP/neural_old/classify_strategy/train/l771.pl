% L771: At a baby shower, we started discussing baby statistics.  One of the women told us she had heard a report that for every 100 babies born, there were 6 more boys than girls.  If we were to pick 10 babies at random, what is the probability that at least half of them would be girls? ## Solution= 0.5473730246

group(3-7).

given(exactly(rel(53/100,3-7), 3-7, boy)).
given(exactly(rel(47/100,3-7), 3-7, girl)).

take_wr(3-7, 3-5, 10).


probability(atleast(5, 3-5, girl)).

property(outcome(0), [boy, girl]).

