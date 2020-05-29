% L132: The probability of a fine day is 3/7 and the probability of a wet day is 4/7.  If it 's a fine day: the probability Joe drives to work is 2/10, the probability Joe cycles to work is 7/10 and the probability Joe takes the train to work is 1/10.  If it 's a wet day: the probability Joe drives to work is 5/9, the probability Joe cycles to work is 1/9 and the probability Joe takes the train to work is 3/9.  For a day selected at random, what is the probability Joe takes the train to work? ## Solution= 7/30

group(days).

given(exactly(rel(1/10, days, fine), days, and(fine, train))).
given(exactly(rel(2/10, days, fine), days, and(drive, fine))).
given(exactly(rel(4/7, days), days, wet)).
given(exactly(rel(7/10, days, fine), days, and(cycle, fine))).
given(exactly(rel(5/9, days, wet), days, and(drive, wet))).
given(exactly(rel(1/9, days, wet), days, and(cycle, wet))).
given(exactly(rel(3/7, days), days, fine)).
given(exactly(rel(3/9, days, wet), days, and(train, wet))).

take(days, 4-17, 1).

probability(all(4-17, train)).

property(transport, [train, drive, cycle]).
property(wheather, [fine, wet]).

