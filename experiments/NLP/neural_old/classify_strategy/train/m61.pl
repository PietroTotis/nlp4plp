% M61: A bookcase contains 6 different math books and 12 different physics books.  If a student randomly selects two of these books, what is the probability that they are both math books or both physics books? ## Solution= 0.5294117647

group(1-2).

given(exactly(12, 1-2, physics)).
given(exactly(6, 1-2, math)).

take(1-2, 2-9, 2).

probability(or(all(2-9, math), all(2-9, physics))).

property(topic, [physics, math]).

