% H155: A total of 48 percent of the women and 37 percent of the men that took a certain `` quit smoking '' class remained nonsmokers for at least one year after completing the class.  These people then attended a success party at the end of a year.  If 62 percent of the original class was male, what percentage of those attending the party were women? ## Solution= 0.44293346

group(1-23).

given(exactly(u, 1-23, woman)).
given(exactly(rel(37/100, 1-23, male), 1-23, and(male, party))).
given(exactly(rel(62/100, 1-23), 1-23, male)).
given(exactly(rel(48/100, 1-23, woman), 1-23, and(party, woman))).

take(1-23, 3-12, 1).
observe(all(3-12, party)).

probability(all(3-12, woman)).

property(gender, [woman, male]).
property(attend, [party]).

