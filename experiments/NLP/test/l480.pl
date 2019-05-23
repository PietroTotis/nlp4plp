% L480: Two firms out of five have a pension scheme, while one firm out of 10 has a sports club.  It is known that one firm out of 20 have both.  What proportion of firms have a pension scheme or a sports club? ## Solution= 9/20

group(firms).

given(exactly(rel(2/5, firms), firms, pension)).
given(exactly(rel(1/10, firms), firms, sport)).
given(exactly(rel(1/20, firms), firms, and(pension, sport))).

take(firms, 3-4, 1).

probability(all(3-4, or(pension, sport))).

property(club, [sport]).
property(scheme, [pension]).

