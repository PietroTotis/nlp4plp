% M40: A jar contains 3 chocolate chip cookies and 4 oatmeal cookies.  Two cookies are pulled from the jar without replacement.  What is the probability that one cookie is chocolate chip and the next cookie is oatmeal? ## Solution= 0.285714285714286

group(1-2).

given(exactly(3, 1-2, chip)).
given(exactly(4, 1-2, oatmeal)).

take(1-2, 2-2, 2).

probability(and(nth(1, 2-2, chip), nth(2, 2-2, oatmeal))).

property(type, [chip, oatmeal]).

