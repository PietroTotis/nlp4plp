% L79: A special die is made in the shape of an icosahedron, and its faces are numbered with the numbers 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 and 20.  When the die is thrown there is an equal chance of any face landing uppermost.  If the die is thrown once, what is the probability that the face that lands uppermost has a number that is a factor of 20?  The factors of 20 are 1, 2, 4, 5, 10 and 20. ## Solution= 3/10

group(1-3).
size(1-3, 20).

given(exactly(1, 1-3, 9)).
given(exactly(1, 1-3, 14)).
given(exactly(1, 1-3, 17)).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 15)).
given(exactly(1, 1-3, 13)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 18)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 19)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 7)).
given(exactly(1, 1-3, 12)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 10)).
given(exactly(1, 1-3, 3)).
given(exactly(1, 1-3, 11)).
given(exactly(1, 1-3, 20)).
given(exactly(1, 1-3, 8)).
given(exactly(1, 1-3, 16)).

take_wr(1-3, 2-5, 1).


probability(all(2-5, or(or(or(1, 2), or(4, 5)), or(10, 20)))).

property(outcome(0), [11, 10, 13, 12, 15, 14, 17, 16, 19, 18, 20, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

