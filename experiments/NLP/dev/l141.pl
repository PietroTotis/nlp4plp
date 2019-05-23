% L141: You roll two dice with six sides, numbered 1, 2, 3, 4, 5 and 6.  The first die shows a ONE and the other die rolls under the table and you can not see it.  Now, what is the probability that both die show ONE? ## Solution= 1/6

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 2).
observe(nth(1, 1-2, 1)).


probability(exactly(2, 1-2, 1)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

