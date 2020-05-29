% L275:  A survey taken at Stirers High School shows that 48 percent of the respondents like soccer, 66 percent like baseball, and 38 percent like hockey.  Also, 30 percent like soccer and hockey.  Finally, 12 percent like all three sports.  If Meg likes baseball, what is the probability that she also likes soccer? ## Solution= ?

group(1-14).

given(exactly(rel(12/100, 1-14), 1-14, and(baseball, and(hockey, soccer)))).
given(exactly(rel(38/100, 1-14), 1-14, hockey)).
given(exactly(rel(48/100, 1-14), 1-14, soccer)).
given(exactly(rel(66/100, 1-14), 1-14, baseball)).
given(exactly(rel(30/100, 1-14), 1-14, and(hockey, soccer))).

take(1-14, 4-2, 1).
observe(all(4-2, baseball)).

probability(all(4-2, soccer)).

property(soccer, [soccer]).
property(baseball, [baseball]).
property(hockey, [hockey]).
