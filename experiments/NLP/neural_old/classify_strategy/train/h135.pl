% H135: Some medical tests turn out either ` positive ' or ` negative '.  ` Positive ' indicates that the person tested has the disease in question ; ` negative ' indicates that he does not have it.  Suppose that such a test for a rare disease sometimes makes mistakes: 1 in 100 of those free of the disease have positive test results, and 2 in 100 of those having the disease have negative test results.  The rest are correctly identified.  One person in 1000 has the disease.  Find the probability that a person with a positive test has the disease. ## Solution= 0.089334549

group(2-8).

given(exactly(rel(1/1000, 2-8), 2-8, have)).
given(exactly(rel(2/100, 2-8, have), 2-8, and(have, negative))).
given(exactly(u, 2-8, not_have)).
given(exactly(rel(1/100, 2-8, not_have), 2-8, and(not_have, positive))).

take(2-8, 6-6, 1).
observe(all(6-6, positive)).

probability(all(6-6, have)).

property(test_result, [positive, negative]).
property(disease, [not_have, have]).

