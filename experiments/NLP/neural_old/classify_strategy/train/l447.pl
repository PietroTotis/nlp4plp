% L447: 2 percent of the population have a certain blood disease in a serious form ; 10 percent have it in a mild form ; and 88 percent do not have it at all.  A new blood test is developed ; the probability of testing positive is 9/10 if the subject has the serious form, 6/10 if the subject has the mild form, and 1/10 if the subject does not have the disease.  I have just tested positive.  What is the probability that I have the serious form of the disease? ## Solution= 9/83

group(1-5).

given(exactly(rel(1/10, 1-5, not), 1-5, and(not, positive))).
given(exactly(rel(9/10, 1-5, serious), 1-5, and(positive, serious))).
given(exactly(rel(2/100, 1-5), 1-5, serious)).
given(exactly(rel(88/100, 1-5), 1-5, not)).
given(exactly(rel(10/100, 1-5), 1-5, mild)).
given(exactly(rel(6/10, 1-5, mild), 1-5, and(mild, positive))).

take(1-5, 3-1, 1).
observe(all(3-1, positive)).

probability(all(3-1, serious)).

property(test, [positive]).
property(form, [not, serious, mild]).

