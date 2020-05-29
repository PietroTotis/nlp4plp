% H738: A firm is accustomed to training operators who do certain tasks on a production line.  Those operators who attend the training course are known to be able to meet their production quotas 90 percent of the time.  New operators who do not take the training course only meet their quotas 65 percent.  of the time.  Fifty percent of new operators attend the course.  Given that a new operator meets his production quota, what is the probability that he attended the program? ## Solution= 0.58064516

group(1-7).

given(exactly(rel(90/100, 1-7, attend), 1-7, and(attend, meet))).
given(exactly(rel(65/100, 1-7, not), 1-7, and(meet, not))).
given(exactly(rel(1/2, 1-7), 1-7, not)).
given(exactly(rel(50/100, 1-7), 1-7, attend)).

take(1-7, 6-5, 1).
observe(all(6-5, meet)).

probability(all(6-5, attend)).

property(quota, [meet]).
property(attend, [not, attend]).

