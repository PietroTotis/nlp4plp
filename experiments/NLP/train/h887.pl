% H887: Diseases D1, D2, and D3 cause symptom A with probabilities 0.5, 0.7, and 0.8, respectively.  If 5 percent of a population have disease D1, 2 percent have disease D2, and 3.5 percent have disease D3, what percent of the population have symptom A? ## Solution= .067

group(2-6).

given(exactly(rel(3.5/100, 2-6), 2-6, d3)).
given(exactly(rel(2/100, 2-6), 2-6, d2)).
given(exactly(rel(.7, 2-6, d2), 2-6, and(a, d2))).
given(exactly(rel(.8, 2-6, d3), 2-6, and(a, d3))).
given(exactly(rel(0.5, 2-6, d1), 2-6, and(a, d1))).
given(exactly(rel(5/100, 2-6), 2-6, d1)).

take(2-6, 2-25, 1).

probability(all(2-25, a)).

property(disease, [d2, d3, d1]).
property(symptom, [a]).

