% L1090: A study of texting and driving has found that 40 percent of all fatal auto accidents are attributed to texting drivers, 1 percent of all auto accidents are fatal, and drivers who text while driving are responsible for 20 percent of all accidents.  Find the percentage of non-fatal accidents caused by drivers who do not text. ## Solution= 397/495

group(1-28).

given(exactly(rel(40/100, 1-28, fatal), 1-28, and(fatal, text))).
given(exactly(u, 1-28, non-fatal)).
given(exactly(rel(20/100, 1-28), 1-28, text)).
given(exactly(rel(1/100, 1-28), 1-28, fatal)).

take(1-28, 2-3, 1).
observe(all(2-3, non-fatal)).

probability(none(2-3, text)).

property(fatal, [fatal, non-fatal]).
property(texting, [text]).

