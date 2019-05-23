% M590: A garage has 50 cars for sale.  16 of the cars have air conditioning and ABS brakes.  32 of the cars have air conditioning.  18 of the cars have ABS brakes.  What is the probability that a randomly selected car does not have air conditioning or ABS brakes? ## Solution= 0.32

group(1-5).
size(1-5, 50).

given(exactly(32, 1-5, conditioning)).
given(exactly(16, 1-5, and(brakes, conditioning))).
given(exactly(18, 1-5, brakes)).

take(1-5, 5-9, 1).

probability(all(5-9, and(not(conditioning), not(brakes)))).

property(abs_brakes, [brakes]).
property(air_conditioning, [conditioning]).

