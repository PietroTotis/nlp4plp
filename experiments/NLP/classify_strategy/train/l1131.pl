% L1131: Chris Mullin of the Indiana Pacers led the National Basketball Association in free-throw percentage during the 1997 - 1998 season.  He made 93.9 percent of his free-throw attempts.  If he attempted 10 free throws in a game, what is the probability that he missed at least one? ## Solution= 0.467087481

group(3-6).

given(exactly(rel(0.939,3-6), 3-6, make)).

take_wr(3-6, 3-3, 10).


probability(atleast(1, 3-3, not(make))).

property(outcome(0), [make]).

