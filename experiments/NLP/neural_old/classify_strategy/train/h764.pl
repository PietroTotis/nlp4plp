% H764: Twelve school photographs are placed in random order face down on a table.  Two of them are of identical twin boys.  One of the twins is brought into the room and asked to select a photograph.  If he is asked to select 2 photographs, what is the probability that he will select his own and his brother 's? ## Solution= 0.0151515151515152

group(1-3).
size(1-3, 12).

given(exactly(2, 1-3, twin)).

take(1-3, 4-8, 2).

probability(all(4-8, twin)).

property(property, [twin]).

