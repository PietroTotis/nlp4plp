% M141: Justin lives in Saint Paul and goes to school in Minneapolis.  In the morning, he has 3 transportation options to school: bus, cab, or train.  In the evening he has the same 3 choices for his trip home.  If Justin randomly chooses his ride in the morning and in the evening, what is the probability that he 'll use both the bus and the train? ## Solution= 2/9

group(2-8).
size(2-8, 3).

given(exactly(1, 2-8, train)).
given(exactly(1, 2-8, bus)).
given(exactly(1, 2-8, cab)).

take_wr(2-8, 4-4, 2).


probability(and(some(4-4, bus), some(4-4, train))).

property(outcome(0), [bus, train, cab]).

