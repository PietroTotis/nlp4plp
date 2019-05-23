% L40: Bipasha loves purple, pink, turquoise and black, and has a blouse in each color.  She has two pair of black pants and a pair of khaki pants.  If she randomly chooses one blouse and one pair of pants, what is the probability she will wear a purple blouse with black pants? ## Solution= 1/6

group(1-14).

group(pants).

given(exactly(1, 1-14, purple)).
given(exactly(1, 1-14, pink)).
given(exactly(1, 1-14, black)).
given(exactly(1, 1-14, turquoise)).
given(exactly(2, pants, black)).
given(exactly(1, pants, khaki)).

take(1-14, 3-6, 1).
take(pants, 3-11, 1).

probability(and(all(3-6, purple), all(3-11, black))).

property(property, [purple, pink, turquoise, khaki, black]).

