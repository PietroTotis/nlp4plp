% M933: At a certain gas station 40 percent of the customers request regular gas, 35 percent request unleaded gas, and 25 percent request premium gas.  Of those customers requesting regular gas, only 30 percent fill their tanks.  Of those customers requesting unleaded gas, 60 percent fill their tanks, while of those requesting premium, 50 percent fill their tanks.  If the next customer fills the tank, what is the probability that regular gas is requested? ## Solution= 0.26373626

group(1-10).

given(exactly(rel(25/100, 1-10), 1-10, premium)).
given(exactly(rel(35/100, 1-10), 1-10, unleaded)).
given(exactly(rel(30/100, 1-10, regular), 1-10, and(fill, regular))).
given(exactly(rel(60/100, 1-10, unleaded), 1-10, and(fill, unleaded))).
given(exactly(rel(50/100, 1-10, premium), 1-10, and(fill, premium))).
given(exactly(rel(40/100, 1-10), 1-10, regular)).

take(1-10, 4-4, 1).
observe(all(4-4, fill)).

probability(all(4-4, regular)).

property(tank_filled, [fill]).
property(gas_requested, [unleaded, regular, premium]).

