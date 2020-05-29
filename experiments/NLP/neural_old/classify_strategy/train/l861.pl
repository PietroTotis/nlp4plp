% L861: On any weekday, the probability of a particular bus arriving at its destination on time is 9/11.  Find the probability that the bus does not arrive on time. ## Solution= 0.181818181818182

group(2-6).

given(exactly(rel(9/11,2-6), 2-6, time)).

take_wr(2-6, 2-9, 1).


probability(all(2-9, not(time))).

property(outcome(0), [time]).

