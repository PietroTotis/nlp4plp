% H625: Ali Baba has a farm.  In the farm he has a herd of 20 animals, 15 are camels and the rest are sheep.  Ahmed, sheik of the Forty Thieves steals 5 animals at night, without knowing what they are.  What is the probability that exactly three of the five stolen animals are camels? ## Solution= ((C(15,3))*(C(5,2)))/(C(20,5))

group(2-10).
size(2-10, 20).

given(exactly(15, 2-10, camel)).
given(exactly(5, 2-10, sheep)).

take(2-10, 3-10, 5).

probability(exactly(3, 3-10, camel)).

property(property, [sheep, camel]).

