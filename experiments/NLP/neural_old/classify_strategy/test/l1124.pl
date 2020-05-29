% L1124: Stanley takes an oral exam in statistics by answering 3 questions from an examination card drawn at random from the set of 20 cards.  There are 8 favorable cards, i.e. Stanley knows answers on all 3 questions.  Stanley will get a grade A if he answers all 3 questions.  What is the probability for Stanley to get an A ## Solution= 0.4

group(1-24).
size(1-24, 20).

given(exactly(8, 1-24, favorable)).

take(1-24, 1-15, 1).

probability(all(1-15, favorable)).

property(property, [favorable]).

