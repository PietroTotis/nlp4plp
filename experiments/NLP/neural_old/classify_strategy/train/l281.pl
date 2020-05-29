% L281: Assume that 60 percent of Marigold seeds that are sown directly in ground produce plants.  If Tomaso plants 10 seeds, what is the probability that 7 plants will be produced? ## Solution= 0.215

group(2-5).

given(exactly(rel(60/100,2-5), 2-5, produce)).

take_wr(2-5, 2-3, 10).


probability(exactly(7, 2-3, produce)).

property(outcome(0), [produce]).

