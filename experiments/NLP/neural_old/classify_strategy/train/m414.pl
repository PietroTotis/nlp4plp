% M414: Hank can hit the bull 's eye with a bow-and-arrow one in three times.  If Hank fires nine arrows, what is the probability that exactly three of them will land in the bull 's eye? ## Solution= 0.2731290962

group(1-10).

given(exactly(rel(1/3,1-10), 1-10, land)).

take_wr(1-10, 1-3, 9).


probability(exactly(3, 1-3, land)).

property(outcome(0), [land]).

