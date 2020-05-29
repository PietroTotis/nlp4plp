% H157: On rainy days, Joe is late to work with probability .3 ; on nonrainy days, he is late with probability .1.  With probability .7, it will rain tomorrow.  Find the probability that Joe is early tomorrow. ## Solution= .76

group(1-3).

given(exactly(rel(.3, 1-3), 1-3, nonrainy)).
given(exactly(rel(.1, 1-3, nonrainy), 1-3, and(late, nonrainy))).
given(exactly(rel(.3, 1-3, rainy), 1-3, and(late, rainy))).
given(exactly(rel(.7, 1-3), 1-3, rainy)).

take(1-3, 3-5, 1).

probability(none(3-5, late)).

property(late, [late]).
property(rain, [nonrainy, rainy]).

