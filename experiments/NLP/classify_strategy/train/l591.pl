% L591: An instructor gives her class a set of 10 problems with the information that the final exam will consist of a random selection of 5 of them.  If a student has figured out how to do 7 of the problems, what is the probability that he or she will answer correctly all 5 problems? ## Solution= 0.083333333

group(1-10).
size(1-10, 10).

given(exactly(7, 1-10, correctly)).

take(1-10, 1-23, 5).

probability(all(1-23, correctly)).

property(property, [correctly]).

