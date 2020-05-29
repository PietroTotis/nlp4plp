% M294: To get home from work, Curtis must get on one of the three highways that leave the city: A, B and C.  He then has a choice of four different roads that lead to his house: 1, 2, 3, 4.  If Curtis randomly chooses a route to travel home, what is the probability that he will travel Highway B and Road 4? ## Solution= 0.0833333333333333

group(1-15).
size(1-15, 3).

given(exactly(1, 1-15, a)).
given(exactly(1, 1-15, b)).
given(exactly(1, 1-15, c)).
group(2-9).
size(2-9, 4).

given(exactly(1, 2-9, 1)).
given(exactly(1, 2-9, 4)).
given(exactly(1, 2-9, 2)).
given(exactly(1, 2-9, 3)).

take_wr(1-15, 3-18-0, 1).
take_wr(2-9, 3-18-1, 1).
union(3-18, [3-18-0,3-18-1]).


probability(and(some(3-18, b), some(3-18, 4))).

property(outcome(0), [a, c, b, 1, 3, 2, 4]).

