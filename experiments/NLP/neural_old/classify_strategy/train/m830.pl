% M830: According to the U.S. Census Bureau, 8.4 percent of high school dropouts are 16 - to 17 - year - olds.  In addition, 6.2 percent of high school dropouts are white 16 - to 17 - year - olds.  What is the probability that a randomly selected dropout is white, given that he or she is 16 to 17 years old? ## Solution= 0.7380952381

group(1-13).

given(exactly(rel(6.2/100, 1-13), 1-13, and(between_16_and_17, white))).
given(exactly(rel(8.4/100, 1-13), 1-13, between_16_and_17)).

take(1-13, 3-9, 1).
observe(all(3-9, between_16_and_17)).

probability(all(3-9, white)).

property(skin_colour, [white]).
property(age, [between_16_and_17]).

