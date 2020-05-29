% M105: A local gym offers its members the opportunity to choose between two fitness classes: yoga and dance.  Of the 400 gym members, 300 regularly attend yoga, 80 regularly attend dance, and 50 regularly attend yoga and dance.  Using this information, what is the probability that a gym member attends yoga or dance? ## Solution= 33/40

group(1-6).
size(1-6, 400).

given(exactly(300, 1-6, yoga)).
given(exactly(50, 1-6, and(dance, yoga))).
given(exactly(80, 1-6, dance)).

take(1-6, 3-12, 1).

probability(all(3-12, or(yoga, dance))).

property(dance, [dance]).
property(yoga, [yoga]).

