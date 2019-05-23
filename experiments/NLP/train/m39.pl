% M39: In a game, there are two spinners.  The first one has 3 equal sectors numbered 1, 3 and 4, the second one has 4 equal sectors numbered 5, 6, 3 and 2.  Each spinner is spun once and the results are added.  What is the probability that the sum is an even number? ## Solution= 0.5

group(2-2).
size(2-2, 3).

given(exactly(1, 2-2, 1)).
given(exactly(1, 2-2, 4)).
given(exactly(1, 2-2, 3)).
group(2-16).
size(2-16, 4).

given(exactly(1, 2-16, 2)).
given(exactly(1, 2-16, 5)).
given(exactly(1, 2-16, 3)).
given(exactly(1, 2-16, 6)).

take_wr(2-2, 3-4-0, 1).
take_wr(2-16, 3-4-1, 1).
union(3-4, [3-4-0,3-4-1]).


probability(aggcmp(3-4,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

