% L442: I have 6 gold coins, 4 silver coins and 3 bronze coins in my pocket.  I take out three coins at random.  What is the probability that they are all of different material? ## Solution= 72/286

group(1-16).

given(exactly(3, 1-16, bronze)).
given(exactly(6, 1-16, gold)).
given(exactly(4, 1-16, silver)).

take(1-16, 2-5, 3).

probability(all_diff(2-5,material)).

property(material, [bronze, silver, gold]).

