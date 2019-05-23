% L842: The probability that a student is not a swimmer is 1/5.  What is then the probability that out of five students, four are swimmers? ## Solution= (4/5)^4

group(2-10).

given(exactly(rel(4/5,2-10), 2-10, swimmer)).

take_wr(2-10, 2-13, 5).


probability(exactly(4, 2-13, swimmer)).

property(outcome(0), [swimmer]).

