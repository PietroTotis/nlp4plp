% L986: Amin and Nadia are allowed to have one topping on their ice cream.  The choices of toppings are Butterfingers, M and M, chocolate chips, Gummy Bears, Kit Kat, Peanut Butter, and chocolate syrup.  If they choose at random, what is the probability that they both choose Kit Kat as a topping? ## Solution= 1/49

group(3-19).
size(3-19, 7).

given(exactly(1, 3-19, syrup)).
given(exactly(1, 3-19, chips)).
given(exactly(1, 3-19, kat)).
given(exactly(1, 3-19, butterfingers)).
given(exactly(1, 3-19, butter)).
given(exactly(1, 3-19, bear)).
given(exactly(1, 3-19, m)).

take_wr(3-19, 3-3, 2).


probability(all(3-3, kat)).

property(outcome(0), [butter, syrup, m, bear, butterfingers, kat, chips]).

