% H368: The week is composed of Monday, Tuesday, Wednesday, Thursday, Friday, Saturday and Sunday.  Amy was born on a Tuesday.  What is the probability that exactly two of her three best friends were also born on Tuesday? ## Solution= 18/343

group(1-2).
size(1-2, 7).

given(exactly(1, 1-2, monday)).
given(exactly(1, 1-2, saturday)).
given(exactly(1, 1-2, friday)).
given(exactly(1, 1-2, sunday)).
given(exactly(1, 1-2, wednesday)).
given(exactly(1, 1-2, thursday)).
given(exactly(1, 1-2, tuesday)).

take_wr(1-2, 3-15, 3).


probability(exactly(2, 3-15, tuesday)).

property(outcome(0), [monday, tuesday, friday, wednesday, thursday, sunday, saturday]).

