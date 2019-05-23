% H361: A circuit contains two switches.  The first switch transmits a message correctly 80 percent of the time, and the second switch transmits a message correctly 90 percent of the time.  What percent of the time will the message be transmitted successfully through both switches? ## Solution= 0.72

group(2-3).

given(exactly(rel(80/100,2-3), 2-3, correctly)).
group(2-17).

given(exactly(rel(90/100,2-17), 2-17, correctly)).

take_wr(2-3, 1-5-0, 1).
take_wr(2-17, 1-5-1, 1).
union(1-5, [1-5-0,1-5-1]).


probability(all(1-5, correctly)).

property(outcome(0), [correctly]).

