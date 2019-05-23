% M774: A student randomly selects a day of the week for studying.  What is the probability that the student will select a week-end day - Saturday or Sunday -? ## Solution= 2/7

group(1-9).
size(1-9, 7).

given(exactly(2, 1-9, week-end)).

take(1-9, 1-6, 1).

probability(all(1-6, week-end)).

property(property, [week-end]).

