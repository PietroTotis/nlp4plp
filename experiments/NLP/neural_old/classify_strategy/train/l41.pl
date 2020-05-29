% L41: Jay is looking in his closet, trying to decide what to wear.  He has 2 red t-shirts, 2 black t-shirts and 3 white t-shirts.  He has 3 pair of blue jeans and 2 pair of black pants.  What is the probability that he randomly chooses a red shirt with jeans? ## Solution= 6/35

group(tshirts).

group(pants).

given(exactly(2, pants, black)).
given(exactly(3, pants, jeans)).
given(exactly(2, tshirts, red)).
given(exactly(3, tshirts, white)).
given(exactly(2, tshirts, black)).

take(pants, 4-13, 1).
take(tshirts, 4-11, 1).

probability(and(all(4-13, jeans), all(4-11, red))).

property(color, [jeans, white, black, red]).

