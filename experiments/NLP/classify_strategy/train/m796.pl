% M796: A desk has five drawers.  Your pen is in one of them.  If a drawer is selected at random, what is the probability that your pen is not in it? ## Solution= 4/5

group(1-5).
size(1-5, 5).

given(exactly(1, 1-5, pen)).

take(1-5, 3-3, 1).

probability(none(3-3, pen)).

property(property, [pen]).
