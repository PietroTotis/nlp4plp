% M934: Seventy percent of the light aircraft that disappear while in flight in a certain country are subsequently discovered.  Of the aircraft that are discovered, 60 percent have an emergency locator, whereas 90 percent of the aircraft not discovered do not have such a locator.  Suppose that a light aircraft has disappeared.  If it has an emergency locator, what is the probability that it will be discovered? ## Solution= 0.93333333

group(1-6).

given(exactly(rel(90/100, 1-6, no), 1-6, and(have_not, no))).
given(exactly(rel(60/100, 1-6, yes), 1-6, and(have, yes))).
given(exactly(rel(30/100, 1-6), 1-6, no)).
given(exactly(rel(70/100, 1-6), 1-6, yes)).

take(1-6, 3-5, 1).
observe(all(3-5, have)).

probability(all(3-5, yes)).

property(discovered, [yes, no]).
property(locator, [have_not, have]).

