% L657: At a convention there are 7 mathematics instructors, 5 computer science instructors, 3 statistics instructors, and 4 science instructors.  If an instructor is selected, find the probability of getting a science instructor or a math instructor. ## Solution= 11/19

group(1-3).

given(exactly(5, 1-3, computer)).
given(exactly(7, 1-3, math)).
given(exactly(3, 1-3, statistics)).
given(exactly(4, 1-3, science)).

take(1-3, 2-3, 1).

probability(all(2-3, or(science, math))).

property(property, [science, statistics, computer, math]).

