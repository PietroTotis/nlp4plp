% L664: A recent study of 300 patients found that of 100 alcoholic patients, 87 had elevated cholesterol levels, and of 200 nonalcoholic patients, 43 had elevated cholesterol levels.  If a patient is selected at random, find the probability that the patient is an alcoholic with elevated cholesterol level. ## Solution= 29/100

group(1-6).
size(1-6, 300).

given(exactly(43, 1-6, and(cholesterol, nonalcoholic))).
given(exactly(100, 1-6, alcoholic)).
given(exactly(87, 1-6, and(alcoholic, cholesterol))).
given(exactly(200, 1-6, nonalcoholic)).

take(1-6, 2-3, 1).

probability(and(all(2-3, alcoholic), all(2-3, cholesterol))).

property(alcohol, [nonalcoholic, alcoholic]).
property(cholesterol, [cholesterol]).

