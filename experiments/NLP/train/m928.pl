% M928: You flip a coin and then roll a fair die, with 6 sides, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that the coin lands heads-up and the die shows an even number? ## Solution= 0.25

group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, heads-up)).
given(exactly(1, 1-4, v(1-4,0))).
group(1-10).
size(1-10, 6).

given(exactly(1, 1-10, 2)).
given(exactly(1, 1-10, 1)).
given(exactly(1, 1-10, 6)).
given(exactly(1, 1-10, 4)).
given(exactly(1, 1-10, 5)).
given(exactly(1, 1-10, 3)).

take_wr(1-4, 1-2, 1).

take_wr(1-10, 1-7, 1).


probability(and(all(1-2, heads-up), aggcmp(1-7,outcome(1),sum,is_even))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [v(1-4,0), heads-up]).

