% M60: Five balls are drawn without replacement from a bag containing 3 metal balls and 5 glass balls.  What is the probability that at least 3 glass balls are drawn? ## Solution= 0.821428571428571

group(1-9).

given(exactly(5, 1-9, glass)).
given(exactly(3, 1-9, metal)).

take(1-9, 1-2, 5).

probability(atleast(3, 1-2, glass)).

property(material, [glass, metal]).

