% L980: Workplace accidents are categorized into three groups: minor, moderate and severe.  The probability that a given accident is minor is 0.5, that it is moderate is 0.4, and that it is severe is 0.1.  Two accidents occur independently in one month.  Calculate the probability that neither accident is severe and at most one is moderate. ## Solution= 0.65

group(3-2).

given(exactly(rel(0.4,3-2), 3-2, moderate)).
given(exactly(rel(0.1,3-2), 3-2, severe)).
given(exactly(rel(0.5,3-2), 3-2, minor)).

take_wr(3-2, 3-3, 2).


probability(and(all(3-3, not(severe)), atmost(1, 3-3, moderate))).

property(outcome(0), [severe, moderate, minor]).

