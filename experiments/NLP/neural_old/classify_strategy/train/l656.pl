% L656: At a community swimming pool there are 2 managers, 8 lifeguards, 3 concession stand clerks, and 2 maintenance people.  If a person is selected at random, find the probability that the person is either a lifeguard or a manager. ## Solution= 2/3

group(people).

given(exactly(2, people, maintenance)).
given(exactly(8, people, lifeguard)).
given(exactly(3, people, clerk)).
given(exactly(2, people, manager)).

take(people, 2-3, 1).

probability(all(2-3, or(lifeguard, manager))).

property(property, [lifeguard, manager, clerk, maintenance]).

