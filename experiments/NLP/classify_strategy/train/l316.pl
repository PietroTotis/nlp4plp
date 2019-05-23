% L316: A die is thrown as long as necessary for an ace or a 6 to turn up.  Given that no ace turned up in the first two throws, what is the probability that at least three throws will be necessary? ## Solution= 16/25

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, ace)).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,0))).

take_wr(1-2, 1-4, 2).
observe(all(1-4, not(ace))).


probability(all(1-4, not(6))).

property(outcome(0), [ace, v(1-2,2), v(1-2,3), 6, v(1-2,0), v(1-2,1)]).

