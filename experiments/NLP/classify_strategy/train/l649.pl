% L649: In a survey, 16 percent of American children said they use flattery to get their parents to buy them things.  If a child is selected at random, find the probability that the child said he or she does not use parental flattery. ## Solution= 0.84

group(1-9).

given(exactly(rel(16/100, 1-9), 1-9, flattery)).

take(1-9, 2-3, 1).

probability(none(2-3, flattery)).

property(property, [flattery]).

