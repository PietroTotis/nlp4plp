% M21: Lynn collects stamps from different countries.  He has five from Canada, two from France, one from Russia, four from Great Britain, and one from Germany.  If he accidentally loses one stamp, what is the probability that it is the stamp from Russia? ## Solution= 1/13

group(1-3).

given(exactly(2, 1-3, france)).
given(exactly(5, 1-3, canada)).
given(exactly(1, 1-3, russia)).
given(exactly(1, 1-3, germany)).
given(exactly(4, 1-3, britain)).

take(1-3, 3-6, 1).

probability(all(3-6, russia)).

property(origin, [canada, britain, germany, russia, france]).

