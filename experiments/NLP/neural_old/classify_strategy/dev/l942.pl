% L942: Of 20 light bulbs, 3 are defective.  Five bulbs are chosen at random.  Use the rules of probability to find the probability that none are defective. ## Solution= 0.399122807017544

group(1-4).
size(1-4, 20).

given(exactly(3, 1-4, defective)).

take(1-4, 2-2, 5).

probability(none(2-2, defective)).

property(property, [defective]).

