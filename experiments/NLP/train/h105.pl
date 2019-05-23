% H105: In order to test a new car, an automobile manufacturer wants to select 3 employees to test drive the car for one year.  If 12 management and 8 union employees volunteer to be test drivers and the selection is made at random, find the probability that the 3rd driver is a union employee given that the first two drivers are management employees. ## Solution= 8/18

group(rest(2-37)).

group(1-16).

given(exactly(8, 1-16, union)).
given(exactly(12, 1-16, management)).

take(rest(2-37), 2-27, 1).
take(1-16, 2-37, 2).
observe(all(2-37, management)).

probability(all(2-27, union)).

property(property, [union, management]).

