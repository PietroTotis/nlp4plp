% M340: Two cards are drawn from single deck of 52 cards.  Each deck has four cards of six, seven, eight and nine.  What is the probability of selecting 6 or 7 in the first draw and 8 or 9 in the second draw without replacement? ## Solution= 0.024132730015083

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, six)).
given(exactly(4, 1-7, eight)).
given(exactly(4, 1-7, seven)).
given(exactly(4, 1-7, nine)).

take(1-7, 1-2, 2).

probability(and(nth(1, 1-2, or(six, seven)), nth(2, 1-2, or(eight, nine)))).

property(card_value, [eight, seven, six, nine]).

