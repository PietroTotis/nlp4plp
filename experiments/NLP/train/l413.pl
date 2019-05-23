% L413: A number is selected from the numbers 1, 2, 3 and then a second number y is randomly selected from the numbers 1, 4, 9.  What is the probability that the product xy of the two numbers will be less than 9? ## Solution= 5/9

group(1-24).
size(1-24, 3).

given(exactly(1, 1-24, 1)).
given(exactly(1, 1-24, 4)).
given(exactly(1, 1-24, 9)).
group(1-7).
size(1-7, 3).

given(exactly(1, 1-7, 1)).
given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, 3)).

take_wr(1-24, 1-4-0, 1).
take_wr(1-7, 1-4-1, 1).
union(1-4, [1-4-0,1-4-1]).


probability(aggcmp(1-4,outcome(0),product,<,9)).

property(outcome(0), [1, 9, 3, 2, 4]).

