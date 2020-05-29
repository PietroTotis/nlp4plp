% H816: A machine tool is idle 15 percent of the time.  You request immediate use of the tool on five different occasions during the year.  Assume that your requests represent independent events.  What is the probability that the tool is idle at the time of all of your requests? ## Solution= .000076

group(1-3).

given(exactly(rel(15/100,1-3), 1-3, idle)).

take_wr(1-3, 2-11, 5).


probability(all(2-11, idle)).

property(outcome(0), [idle]).

