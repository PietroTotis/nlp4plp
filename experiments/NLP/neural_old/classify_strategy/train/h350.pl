% H350: John, Kevin, Larry, Mary and Nancy all volunteered to so some math tutoring.  If their teacher randomly chooses two of the five students, what is the probability of selecting the two girls? ## Solution= 1/10

group(2-10).
size(2-10, 5).

given(exactly(3, 2-10, guy)).
given(exactly(2, 2-10, girl)).

take(2-10, 2-6, 2).

probability(all(2-6, girl)).

property(property, [guy, girl]).

