% M118: Mark is going to an awards dinner and wants to dress appropriately.  He is running behind schedule and asks his little brother to randomly select an outfit for him.  Mark has one blue dress shirt, one white dress shirt, one black dress shirt, one pair of black slacks, one pair of gray slacks, and one red tie.  What is the probability that Mark 's little brother selects an outfit with black slacks or an outfit with a blue shirt? ## Solution= 2/3

group(3-1).

given(exactly(1, 3-1, red_tie)).
given(exactly(1, 3-1, blue_shirt)).
given(exactly(1, 3-1, black_slacks)).
given(exactly(1, 3-1, black_shirt)).
given(exactly(1, 3-1, gray_slacks)).
given(exactly(1, 3-1, white_shirt)).

take(3-1, 4-12, 2).
observe(exactly(1, 4-12, or(blue_shirt, or(white_shirt, black_shirt)))).
observe(exactly(1, 4-12, or(black_slacks, gray_slacks))).

probability(or(some(4-12, black_slacks), some(4-12, blue_shirt))).

property(clothing, [red_tie, blue_shirt, gray_slacks, black_shirt, black_slacks, white_shirt]).

