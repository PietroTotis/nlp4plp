% L463: A bag contained four green balls, three red balls, and two purple balls.  Jason removed one purple ball from the bag and did not put the ball back in the bag.  He then randomly removed another ball from the bag.  What is the probability that the second ball Jason removed was purple? ## Solution= 1/8

group(rest(2-5)).

group(1-2).

given(exactly(2, 1-2, purple)).
given(exactly(4, 1-2, green)).
given(exactly(3, 1-2, red)).

take(rest(2-5), 3-6, 1).
take(1-2, 2-5, 1).
observe(all(2-5, purple)).

probability(all(3-6, purple)).

property(property, [purple, green, red]).

