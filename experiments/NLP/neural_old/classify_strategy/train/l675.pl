% L675: The World Wide Insurance Company found that 53 percent of the residents of a city had homeowner 's insurance with the company.  Of these clients, 27 percent also had automobile insurancewith the company.  If a resident is selected at random, find the probability that the resident has both homeowner 's and automobile insurance with the World Wide Insurance Company. ## Solution= 0.1431

group(1-12).

given(exactly(rel(27/100, 1-12, homeowner), 1-12, and(automobile, homeowner))).
given(exactly(rel(53/100, 1-12), 1-12, homeowner)).

take(1-12, 3-3, 1).

probability(and(all(3-3, homeowner), all(3-3, automobile))).

property(home, [homeowner]).
property(auto, [automobile]).

