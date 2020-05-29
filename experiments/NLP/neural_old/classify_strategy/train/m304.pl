% M304: Suppose that 37.4 percent of all college football teams had winning records in 1998, and another 24.8 percent broke even.  What is the probability that a randomly chosen college football team had a losing record in 1998? ## Solution= 0.378

group(1-9).

given(exactly(rel(37.4/100, 1-9), 1-9, win)).
given(exactly(rel(24.8/100, 1-9), 1-9, even)).

take(1-9, 2-11, 1).

probability(all(2-11, lose)).

property(record, [even, win, lose]).

