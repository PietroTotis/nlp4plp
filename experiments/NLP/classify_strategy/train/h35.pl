% H35: There are 3 red marbles, 3 green marbles, and 4 blue marbles in a pouch.  If Jenna draws out marbles without replacing them, what are the odds that she will draw a red marble AND a blue marble on her first two selections? ## Solution= 0.266666666666667

group(1-17).

given(exactly(4, 1-17, blue)).
given(exactly(3, 1-17, red)).
given(exactly(3, 1-17, green)).

take(1-17, 2-5, 2).

probability(and(exactly(1, 2-5, red), exactly(1, 2-5, blue))).

property(property, [blue, green, red]).

