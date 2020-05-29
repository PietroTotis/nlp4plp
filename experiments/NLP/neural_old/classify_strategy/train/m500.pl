% M500: A girl chooses an item at random from 12 skirts and 16 tops.  What is the probability that the girl does not choose a skirt? ## Solution= 16/28

group(clothes).

given(exactly(12, clothes, skirt)).
given(exactly(16, clothes, top)).

take(clothes, 1-5, 1).

probability(none(1-5, skirt)).

property(type, [top, skirt]).

