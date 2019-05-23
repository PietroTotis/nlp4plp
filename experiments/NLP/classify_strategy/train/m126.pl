% M126: A local gym offers its members the opportunity to choose between two fitness classes: weight lifting and Pilates.  Of the 350 gym members, 175 regularly attend weight lifting, 200 regularly attend Pilates, and 100 regularly attend weight lifting and Pilates.  What is the probability that a gym member attends weight lifting or pilates? ## Solution= 11/14

group(2-5).
size(2-5, 350).

given(exactly(200, 2-5, pilate)).
given(exactly(175, 2-5, lifting)).
given(exactly(100, 2-5, and(lifting, pilate))).

take(2-5, 3-8, 1).

probability(all(3-8, or(lifting, pilate))).

property(pilates, [pilate]).
property(lifting, [lifting]).

