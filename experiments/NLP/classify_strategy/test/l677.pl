% L677: A box contains black chips and white chips.  A person selects two chips without replacement.  If the probability of selecting a black chip and a white chip is 15/56 and the probability of selecting a black chip on the first draw is 3/8, find the probability of selecting the white chip on the second draw, given that the first chip selected was a black chip. ## Solution= 5/7

group(1-2).

given(exactly(rel(3/8, 1-2), 1-2, black)).
given(exactly(rel(15/56, 1-2), 1-2, and(black, white))).

take(1-2, 3-32, 1).
observe(all(3-32, black)).

probability(all(3-32, white)).

property(white, [white]).
property(black, [black]).

