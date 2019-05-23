% H136: Three girls, Alice, Betty and Charlotte, wash the family dishes.  Since Alice is the oldest, she does the job 40 percent of the time.  Betty and Charlotte share the other 60 percent equally.  The probability that at least one dish will be broken when Alice is washing them is 0.02 ; for Betty and Charlotte the probabilities are 0.03 and 0.02.  The parents do not know who is washing the dishes, but one night they hear one break.  What is the probability that Alice was washing up? ## Solution= 0.34782609

group(1-13).

given(exactly(rel(40/100, 1-13), 1-13, alice)).
given(exactly(rel(0.02, 1-13, charlotte), 1-13, and(break, charlotte))).
given(exactly(rel(0.02, 1-13, alice), 1-13, and(alice, break))).
given(exactly(rel(30/100, 1-13), 1-13, charlotte)).
given(exactly(rel(0.03, 1-13, betty), 1-13, and(betty, break))).
given(exactly(rel(30/100, 1-13), 1-13, betty)).

take(1-13, 5-10, 1).
observe(all(5-10, break)).

probability(all(5-10, alice)).

property(broken, [break]).
property(name, [charlotte, alice, betty]).

