% H513: Customers are used to evaluate preliminary product designs.  In the past, 96 percent of highly successful products received good reviews, 66 percent of moderately successful products received good reviews, and 12 percent of poor products received good reviews.  In addition, 45 percent of products have been highly successful, 37 percent have been moderately successful, and 18 percent have been poor products.  If a new design attains a good review, what is the probability that it will be a highly successful product? ## Solution= 0.61908856

group(1-7).

given(exactly(rel(12/100, 1-7, poor), 1-7, and(good, poor))).
given(exactly(rel(96/100, 1-7, highly), 1-7, and(good, highly))).
given(exactly(rel(37/100, 1-7), 1-7, moderately)).
given(exactly(rel(45/100, 1-7), 1-7, highly)).
given(exactly(rel(18/100, 1-7), 1-7, poor)).
given(exactly(rel(66/100, 1-7, moderately), 1-7, and(good, moderately))).

take(1-7, 4-4, 1).
observe(all(4-4, good)).

probability(all(4-4, highly)).

property(successful, [poor, moderately, highly]).
property(review, [good]).

