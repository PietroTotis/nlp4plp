% L938: A hockey team wins with a probability of 0.6 and loses with a probability of 0.3.  The team plays three games over the weekend.  Find the probability that the team wins at least twice and does n't lose. ## Solution= 0.324

group(2-5).

given(exactly(rel(0.3,2-5), 2-5, lose)).
given(exactly(rel(0.6,2-5), 2-5, win)).

take_wr(2-5, 2-3, 3).


probability(and(all(2-3, not(lose)), atleast(2, 2-3, win))).

property(outcome(0), [win, lose]).

