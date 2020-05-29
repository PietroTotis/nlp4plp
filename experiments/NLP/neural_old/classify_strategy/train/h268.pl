% H268: Find the probability that at the most 5 defective fuses will be found in a box of 200 fuses if experience shows that 2 percent of search fuses are defective. ## Solution= .785

group(1-28).

given(exactly(rel(2/100, 1-28), 1-28, defective)).

take(1-28, 1-19, 200).

probability(atmost(5, 1-19, defective)).

property(property, [defective]).

