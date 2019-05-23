% M690: A sales representative makes sales on approximately one-third of all calls.  On a given day, the representative calls on four offices.  What is the probability that sales are made at none of the offices? ## Solution= 0.197530864197531

group(1-11).

given(exactly(rel(1/3, 1-11), 1-11, sales)).

take(1-11, 2-11, 4).

probability(none(2-11, sales)).

property(event, [sales]).

