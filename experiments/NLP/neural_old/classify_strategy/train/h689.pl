% H689: Two methods, A and B, are available for teaching a certain industrial skill.  The failure rate is 30 percent for method A and 10 percent for method B. Method B is more expensive, however, and hence is used only 20 percent of the time.  Method A is used the other 80 percent of the time.  A worker is taught the skill by one of the two methods, but he fails to learn it correctly.  What is the probability that he was taught by using method A? ## Solution= 0.92307692

group(1-2).

given(exactly(rel(80/100, 1-2), 1-2, a)).
given(exactly(rel(10/100, 1-2, b), 1-2, and(b, failure))).
given(exactly(rel(20/100, 1-2), 1-2, b)).
given(exactly(rel(30/100, 1-2, a), 1-2, and(a, failure))).

take(1-2, 4-2, 1).
observe(all(4-2, failure)).

probability(all(4-2, a)).

property(fail, [failure]).
property(method, [a, b]).

