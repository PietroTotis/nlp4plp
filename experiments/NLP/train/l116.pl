% L116: `` A '' can solve 90 percent of the questions in a book and `` B '' can solve 70 percent of them.  What is the probability that at least one of them would solve a question selected at random from the book? ## Solution= 97/100

group(1-16).

given(exactly(rel(0.7,1-16), 1-16, solve)).
group(1-2).

given(exactly(rel(0.9,1-2), 1-2, solve)).

take_wr(1-2, 2-12-0, 1).
take_wr(1-16, 2-12-1, 1).
union(2-12, [2-12-0,2-12-1]).


probability(atleast(1, 2-12, solve)).

property(outcome(0), [solve]).

