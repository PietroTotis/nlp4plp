% L581: Leela has five white and six grey huskies in her kennel.  If a wilderness expedition chooses a team of six sled dogs at random from Leela 's kennel, what is the probability the team will consist of all white huskies? ## Solution= 0

group(1-11).

given(exactly(6, 1-11, grey)).
given(exactly(5, 1-11, white)).

take(1-11, 2-11, 6).

probability(all(2-11, white)).

property(property, [white, grey]).

