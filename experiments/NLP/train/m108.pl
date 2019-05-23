% M108: Iman 's favourite colours are blue and pink.  She has one blue shirt, one pink shirt, one blue hat, one blue belt one blue pair of pants, one pink pair of pants.  What is the probability that the garment Iman chooses is pink or a shirt? ## Solution= 0.5

group(clothes).

given(exactly(1, clothes, and(pants, pink))).
given(exactly(1, clothes, and(pink, shirt))).
given(exactly(1, clothes, and(blue, pants))).
given(exactly(1, clothes, and(blue, shirt))).
given(exactly(1, clothes, and(blue, hat))).
given(exactly(1, clothes, and(belt, blue))).

take(clothes, 3-7, 1).

probability(all(3-7, or(pink, shirt))).

property(colour, [blue, pink]).
property(type_of_garement, [pants, hat, shirt, belt]).

