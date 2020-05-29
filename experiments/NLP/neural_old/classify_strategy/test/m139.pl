% M139: Elizabeth lives in San Francisco and works in Mountain View.  In the morning, she has 3 transportation options to work: take a bus, a cab, or a train.  In the evening she has the same 3 choices for her trip home.  If Elizabeth randomly chooses her ride in the morning and in the evening, what is the probability that she 'll use a cab exactly one time? ## Solution= 4/9

group(2-8).
size(2-8, 3).

given(exactly(1, 2-8, train)).
given(exactly(1, 2-8, bus)).
given(exactly(1, 2-8, cab)).

take_wr(2-8, 4-4, 2).


probability(exactly(1, 4-4, cab)).

property(outcome(0), [bus, train, cab]).

