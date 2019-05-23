% H875: In a study it was discovered that 25 percent of the paintings of a certain gallery are not original.  A collector in 15 percent of the cases makes a mistake in judging if a painting is authentic or a copy.  If she buys a piece thinking that it is original, what is the probability that it is not? ## Solution= 0.055555556

group(1-12).

given(exactly(rel(25/100, 1-12), 1-12, copy)).
given(exactly(u, 1-12, original)).
given(exactly(rel(15/100, 1-12), 1-12, mistake)).

take(1-12, 3-5, 1).
observe(all(3-5, or(and(original, not(mistake)), and(copy, mistake)))).

probability(all(3-5, copy)).

property(judgement, [mistake]).
property(authentic, [copy, original]).

