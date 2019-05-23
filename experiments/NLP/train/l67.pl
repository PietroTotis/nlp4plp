% L67: You throw a coin at 8 different colored shoe boxes.  What is the probability that the coin will land in the blue shoe box, tails up? ## Solution= 1/16

group(1-10).
size(1-10, 8).

given(exactly(1, 1-10, v(1-10,4))).
given(exactly(1, 1-10, v(1-10,0))).
given(exactly(1, 1-10, v(1-10,6))).
given(exactly(1, 1-10, v(1-10,1))).
given(exactly(1, 1-10, v(1-10,2))).
given(exactly(1, 1-10, v(1-10,3))).
given(exactly(1, 1-10, blue)).
given(exactly(1, 1-10, v(1-10,5))).
group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, tails)).
given(exactly(1, 1-4, v(1-4,0))).

take_wr(1-10, 1-2-0, 1).
take_wr(1-4, 1-2-1, 1).
union(1-2, [1-2-0,1-2-1]).


probability(and(some(1-2, blue), some(1-2, tails))).

property(outcome(1), [v(1-4,0), tails]).
property(outcome(0), [blue, v(1-10,6), v(1-10,5), v(1-10,4), v(1-10,3), v(1-10,2), v(1-10,1), v(1-10,0)]).

