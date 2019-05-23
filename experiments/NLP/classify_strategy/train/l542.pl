% L542:  A manufacturer of a flu vaccine is concerned about the quality of its flu serum.  Batches of serum are processed by three different departments having rejection rates of 0.10, 0.08, and 0.12, respectively.  The inspections by the three departments are sequential and independent.  What is the probability that a batch of serum survives the first departmental inspection but is rejected by the second department? ## Solution= 0.072

group(batches1).
given(exactly(rel(0.10, batches1), batches1, reject1)).

given(exactly(rel(0.08, batches1), batches1, reject2)).

given(exactly(rel(0.12, batches1), batches1, reject3)).

take(batches1, batch1, 1).

probability(all(batch1, and(not(reject1), reject2))).

property(test1, [reject1]).
property(test2, [reject2]).
property(test3, [reject3]).