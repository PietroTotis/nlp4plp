% L832:  Probability that A speaks truth is 4/5.  A coin is tossed.  A reports that a head appears.  What is the probability that actually there was head. ## Solution= 4/5

group(coin).
given(exactly(rel(1/2, coin), coin, head)).
take(coin, c, 1).

group(a).
given(exactly(rel(4/5, a), a, truth)).
take(a, s, 1).

observe(or(and(all(c, head), all(s, truth)), and(all(c, not(head)), all(s, not(truth))))).

probability(all(c, head)).

property(coin, [head]).
property(speaks, [truth]).






