% L721: Of Americans using library services, 67 percent borrow books.  If 5 patrons are chosen at random, what is the probability that all borrowed books? ## Solution= 0.67^5

group(2-3).

given(exactly(rel(67/100,2-3), 2-3, book)).

take_wr(2-3, 2-5, 5).


probability(all(2-5, book)).

property(outcome(0), [book]).

