% L193: A football team has a probability of .75 of winning when playing any of the other four teams in its conference.  If the games are independent, what is the probability the team wins all its conference games? ## Solution= 0.31640625

group(1-2).

given(exactly(rel(0.75,1-2), 1-2, win)).

take_wr(1-2, 1-12, 4).


probability(all(1-12, win)).

property(outcome(0), [win]).

