% L516: The probabilities that three different archers, A, B and C hit the mark, independently of one an - other, are respectively 1/6, 1/4 and 1/3.  Everyone shoots an arrow.  Find the probability that only one hits the mark. ## Solution= 31/72

group(1-8).

given(exactly(rel(1/6,1-8), 1-8, mark)).
group(1-10).

given(exactly(rel(1/4,1-10), 1-10, mark)).
group(1-12).

given(exactly(rel(1/3,1-12), 1-12, mark)).

take_wr(1-8, 1-13-0, 1).
take_wr(1-10, 1-13-1, 1).
take_wr(1-12, 1-13-2, 1).
union(1-13, [1-13-0,1-13-1,1-13-2]).


probability(exactly(1, 1-13, mark)).

property(outcome(0), [mark]).

