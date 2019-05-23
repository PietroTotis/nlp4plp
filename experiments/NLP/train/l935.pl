% L935: 16 parts are examined for defects.  It is found that 10 are good, 4 have minor defects, and 2 have major defects.  Two parts are chosen at random from the 16 without replacement, that is, the first part chosen is not returned to the mix before the second part is chosen.  Notice, then, that there will be only 15 possible choices for the second part.  What is the probability that exactly one part has a major defect? ## Solution= 0.233333333333333

group(1-2).
size(1-2, 16).

given(exactly(2, 1-2, major)).
given(exactly(10, 1-2, good)).
given(exactly(4, 1-2, minor)).

take(1-2, 3-2, 2).

probability(exactly(1, 3-2, major)).

property(property, [major, good, minor]).

