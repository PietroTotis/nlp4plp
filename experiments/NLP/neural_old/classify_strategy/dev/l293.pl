% L293: If 180 seeds are sown, and each has probability 0.3 of germinating, what is the probability that at least 50 germinate? ## Solution= ?

group(1-3).

given(exactly(rel(0.3,1-3), 1-3, germinate)).

take_wr(1-3, 1-5, 180).


probability(atleast(50, 1-5, germinate)).

property(outcome(0), [germinate]).

