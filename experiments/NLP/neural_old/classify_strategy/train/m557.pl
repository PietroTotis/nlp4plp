% M557: A test correctly identifies a disease in 95 percent of people who have it.  It correctly identifies no disease in 94 percent of people who do not have it.  In the population, 3 percent of the people have the disease.  What is the probability that you have the disease if you tested positive? ## Solution= 0.328719723183391

group(3-3).

given(exactly(u, 3-3, negative)).
given(exactly(rel(3/100, 3-3), 3-3, positive)).
given(exactly(rel(95/100, 3-3, positive), 3-3, and(+, positive))).
given(exactly(rel(94/100, 3-3, negative), 3-3, and(-, negative))).

take(3-3, 4-6, 1).
observe(all(4-6, +)).

probability(all(4-6, positive)).

property(test, [+, -]).
property(disease, [positive, negative]).

