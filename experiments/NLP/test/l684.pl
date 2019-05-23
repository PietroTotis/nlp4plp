% L684: Of the 216 players on major league soccer rosters, 80.1 percent are U.S. citizens.  If 3 players are selected at random for an exhibition, what is the probability that all are U.S. citizens? ## Solution= 173/216 * 172/215 * 171/214

group(1-4).
size(1-4, 216).

given(exactly(rel(173/216, 1-4), 1-4, citizen)).

take(1-4, 2-3, 3).

probability(all(2-3, citizen)).

property(property, [citizen]).

