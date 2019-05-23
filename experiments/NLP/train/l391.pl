% L391: A television station is broadcasting a program during a thunderstorm which causes, on average, one image in 200 to fall below its standard for picture quality.  In broadcasting 500 images what is the probability that all of them meet standards? ## Solution= 0.0816

group(2-4).

given(exactly(rel(1/200,2-4), 2-4, below)).

take_wr(2-4, 1-5, 500).


probability(all(1-5, not(below))).

property(outcome(0), [below]).

