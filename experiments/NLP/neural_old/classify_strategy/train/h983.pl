% H983: An airline knows that 10 percent of the people holding reservations on a given flight will not appear.  The plane holds 90 people.  If 95 reservations have been sold, find the probability that the airline will be able to accommodate everyone appearing for the flight. ## Solution= .9666

group(1-9).

given(exactly(rel(10/100,1-9), 1-9, not_appear)).

take_wr(1-9, 1-2, 95).


probability(atmost(90, 1-2, not(not_appear))).

property(outcome(0), [not_appear]).

