% H671: A vehicle arriving at an intersection can turn left, turn right, or continue straight ahead.  An experiment consists of observing the movement of one vehicle at this intersection.  Find the probability that the vehicle turns, assuming that each outcome is equally likely. ## Solution= 0.66666667

group(1-2).
size(1-2, 3).

given(exactly(1, 1-2, right)).
given(exactly(1, 1-2, straight)).
given(exactly(1, 1-2, left)).

take_wr(1-2, 1-6, 1).


probability(all(1-6, or(left, right))).

property(outcome(0), [straight, right, left]).

