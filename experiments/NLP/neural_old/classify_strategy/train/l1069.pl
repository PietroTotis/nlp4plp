% L1069: The probability that a member of a certain class of homeowners with liability and property coverage will file a liability claim is 0.04, and the probability that a member of this class will file a property claim is 0.10.  The probability that a member of this class will file a liability claim but not a property claim is 0.01.  Calculate the probability that a randomly selected member of this class of homeowners will not file a claim of either type. ## Solution= 0.89

group(1-9).

given(exactly(rel(0.01, 1-9), 1-9, and(liability, not))).
given(exactly(rel(0.1, 1-9), 1-9, property)).
given(exactly(rel(0.04, 1-9), 1-9, liability)).

take(1-9, 3-8, 1).

probability(and(none(3-8, liability), none(3-8, property))).

property(liability, [liability]).
property(property, [not, property]).

