% H863: Of the patients in a hospital, 20 percent of those with, and 35 percent of those without myocardial infarction have had strokes.  If 40 percent of the patients have had myocardial infarction, what percent of the patients have had strokes? ## Solution= .290

group(1-3).

given(exactly(rel(20/100, 1-3, with), 1-3, and(stroke, with))).
given(exactly(u, 1-3, without)).
given(exactly(rel(40/100, 1-3), 1-3, with)).
given(exactly(rel(35/100, 1-3, without), 1-3, and(stroke, without))).

take(1-3, 2-13, 1).

probability(all(2-13, stroke)).

property(property, [stroke]).
property(myocardial, [without, with]).

