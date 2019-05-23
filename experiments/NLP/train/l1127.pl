% L1127: During the 1997 baseball season, the Florida Marlins won 5 out of 7 home games and 3 out of 7 away games against the San Francisco Giants.  During the 1997 National League Division Series with the Giants, the Marlins played the first two games at home and the third game away.  The Marlins won all three games.  Estimate the probability of this happening. ## Solution= 75/343

group(2-24).

given(exactly(rel(3/7,2-24), 2-24, win)).
group(2-18).

given(exactly(rel(5/7,2-18), 2-18, win)).

take_wr(2-24, 2-14-0, 1).
take_wr(2-18, 2-14-1, 2).
union(2-14, [2-14-0,2-14-1]).


probability(all(2-14, win)).

property(outcome(0), [win]).

