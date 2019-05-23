% M854: One percent of young children in Canada are allergic to peanuts.  A janitor drops a cookie from his lunch box in a preschool room by accident.  It contains peanuts.  Two preschool kids find the cookie and decide to share it.  What is the probability that at least one of them is allergic to peanuts? ## Solution= 0.0199

group(1-5).

given(exactly(rel(1/100, 1-5), 1-5, peanuts)).

take(1-5, 4-3, 2).

probability(atleast(1, 4-3, peanuts)).

property(allergy, [peanuts]).

