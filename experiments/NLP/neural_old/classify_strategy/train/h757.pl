% H757: An annexation suit is being considered against a county subdivision of 1200 residences by a neighboring city.  If the occupants of half the residences object to being annexed, what is the probability that in a random sample of 10 at least 3 favor the annexation suit? ## Solution= 0.94604553

group(1-13).
size(1-13, 1200).

given(exactly(rel(1/2, 1-13), 1-13, object)).

take(1-13, 2-23, 10).

probability(atleast(3, 2-23, favor)).

property(annexation, [favor, object]).

