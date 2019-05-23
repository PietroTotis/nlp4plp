% M202: An economics consulting firm has created a model to predict recessions.  The model predicts a recession with probability 80 percent when a recession is indeed coming and with probability 10 percent when no recession is coming.  The unconditional probability of falling into a recession is 20 percent.  If the model predicts a recession, what is the probability that a recession will indeed come? ## Solution= 2/3

group(events).

given(exactly(rel(80/100, events, come), events, and(come, yes))).
given(exactly(rel(20/100, events), events, come)).
given(exactly(rel(80/100, events), events, not_coming)).
given(exactly(rel(10/100, events, not_coming), events, and(not_coming, yes))).

take(events, 4-14, 1).
observe(all(4-14, yes)).

probability(all(4-14, come)).

property(recession, [come, not_coming]).
property(prediction, [yes]).

