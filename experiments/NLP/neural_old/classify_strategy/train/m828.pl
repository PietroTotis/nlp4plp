% M828: According to the U.S. Census Bureau, 19.1 percent of U.S. households are in the Northeast.  In addition, 4.4 percent of U.S. households earn $ 75,000 per year or more and are located in the Northeast.  Determine the probability that a randomly selected U.S. household earns more than $ 75,000 per year, given that the household is located in the Northeast. ## Solution= 0.230366492146597

group(1-12).

given(exactly(rel(4.4/100, 1-12), 1-12, and(gt75000, northeast))).
given(exactly(rel(19.1/100, 1-12), 1-12, northeast)).

take(1-12, 3-9, 1).
observe(all(3-9, northeast)).

probability(all(3-9, gt75000)).

property(residence, [northeast]).
property(year_salary, [gt75000]).

