% M484: In a population of 100,000 females, 89.835 percent can expect to live to age 60, while 57.062 percent can expect to live to age 80.  Given that a woman is 60, what is the probability that she lives to age 80? ## Solution= 0.635186731229476

group(1-3).
size(1-3, 100000).

given(exactly(rel(89.835/100, 1-3), 1-3, 60)).
given(exactly(rel(57.062/100, 1-3), 1-3, and(60, 80))).

take(1-3, 2-4, 1).
observe(all(2-4, 60)).

probability(all(2-4, 80)).

property(life_expectancy, [60]).
property(l_e, [80]).

