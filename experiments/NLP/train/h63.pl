% H63: An unfair coin has a probability of coming up heads of 0.65.  The coin is flipped 50 times.  What is the probability it will come up heads 25 or fewer times? ## Solution= 0.02066839

group(1-3).

given(exactly(rel(.65,1-3), 1-3, head)).

take_wr(1-3, 2-4, 50).


probability(atmost(25, 2-4, head)).

property(outcome(0), [head]).

