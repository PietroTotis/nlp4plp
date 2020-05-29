% L77: A committee of three is chosen from five councilors - Adams, Burke, Cobb, Dilby and Evans.  What is the probability Burke is on the committee? ## Solution= 3/5

group(1-9).
size(1-9, 5).

given(exactly(1, 1-9, adams)).
given(exactly(1, 1-9, cobb)).
given(exactly(1, 1-9, burke)).
given(exactly(1, 1-9, dilby)).
given(exactly(1, 1-9, evans)).

take(1-9, 1-2, 3).

probability(exactly(1, 1-2, burke)).

property(property, [evans, adams, cobb, burke, dilby]).

