% L175: Americans can be quite suspicious, especially when it comes to government conspiracies.  On the question of whether the U.S. Air Force has withheld proof of the existence of intelligent life on other planets, the proportions of Americans with varying opinions are: 24 percent very likely, 24 percent somewhat likely, 40 percent unlikely and 12 percent other.  What is the probability that the person selected finds it at least somewhat likely that the Air Force is withholding information about intelligent life on other planets? ## Solution= 0.48

group(2-29).

given(exactly(rel(40/100,2-29), 2-29, unlikely)).
given(exactly(rel(24/100,2-29), 2-29, very)).
given(exactly(rel(24/100,2-29), 2-29, somewhat)).
given(exactly(rel(12/100,2-29), 2-29, other)).

take_wr(2-29, 3-8, 1).


probability(all(3-8, or(somewhat, very))).

property(outcome(0), [very, other, unlikely, somewhat]).

