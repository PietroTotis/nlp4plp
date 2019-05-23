% L728: The probability that it snows and the bus arrives late is 0.023.  Jose hears the weather forecast, and there is a 40 percent chance of snow tomorrow.  Find the probability that the bus will be late, given that it snows. ## Solution= 0.0575

group(probabilities).

given(exactly(rel(0.023, probabilities), probabilities, and(late, snow))).
given(exactly(rel(40/100, probabilities), probabilities, snow)).

take(probabilities, 3-3, 1).
observe(all(3-3, snow)).

probability(all(3-3, late)).

property(bus, [late]).
property(weather, [snow]).

