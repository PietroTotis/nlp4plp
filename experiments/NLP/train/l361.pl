% L361: The city of Trenton has 1000 homes.  600 of the homes subscribe to the Trenton Herald newspaper and 400 of the homes subscribe to the Trenton Tribune newspaper.  200 homes subscribe to both newspapers.  If a home is selected at random, what is the probability that it subscribes to both newspapers given that we know it subscribes to at least one? ## Solution= 0.25

group(1-7).
size(1-7, 1000).

given(exactly(200, 1-7, and(herald, tribune))).
given(exactly(400, 1-7, tribune)).
given(exactly(600, 1-7, herald)).

take(1-7, 4-3, 1).
observe(all(4-3, or(herald, tribune))).

probability(all(4-3, and(herald, tribune))).

property(subscribe_t, [tribune]).
property(subscribe_h, [herald]).

