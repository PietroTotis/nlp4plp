% L1136: A company is focus testing a new type of fruit drink.  The focus group is 47 percent male.  Of the males in the group, 40 percent said they would buy the fruit drink, and of the females, 54 percent said they would buy the fruit drink.  Find the probability that a randomly selected person would buy the fruit drink. ## Solution= 0.4742

group(2-3).

given(exactly(rel(54/100, 2-3, female), 2-3, and(buy, female))).
given(exactly(rel(47/100, 2-3), 2-3, male)).
given(exactly(rel(53/100, 2-3), 2-3, female)).
given(exactly(rel(40/100, 2-3, male), 2-3, and(buy, male))).

take(2-3, 4-8, 1).

probability(all(4-8, buy)).

property(gender, [male, female]).
property(buy, [buy]).

