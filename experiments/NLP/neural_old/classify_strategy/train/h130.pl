% H130: Of 100,000 persons living at age 20, statistics show that 47,773 will be alive at 70.  What is the probability that a person aged 20 will live to be 70? ## Solution= 47773/100000

group(1-3).
size(1-3, 100000).

given(exactly(47773, 1-3, alive)).

take(1-3, 2-7, 1).

probability(all(2-7, alive)).

property(property, [alive]).

