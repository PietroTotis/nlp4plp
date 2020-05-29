% M103: A local gym offers its members the opportunity to choose between two fitness classes: yoga and dance.  Of the 400 gym members, 300 regularly attend yoga, 80 regularly attend dance, and 50 regularly attend yoga and dance.  Using this information, what is the probability that a gym member attends dance? ## Solution= 1/5

group(2-5).
size(2-5, 400).

given(exactly(300, 2-5, yoga)).
given(exactly(50, 2-5, and(dance, yoga))).
given(exactly(80, 2-5, dance)).

take(2-5, 3-12, 1).

probability(all(3-12, dance)).

property(dance, [dance]).
property(yoga, [yoga]).

