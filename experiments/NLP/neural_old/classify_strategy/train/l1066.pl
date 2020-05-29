% L1066: A survey of a group 's viewing habits over the last year revealed the following information: 28 percent watched gymnastics, 29 percent watched baseball, 19 percent watched soccer, 14 percent watched gymnastics and baseball, 12 percent watched baseball and soccer, 10 percent watched gymnastics and soccer and 8 percent watched all three sports.  Find the probability of the group that watched none of the three sports during the last year. ## Solution= 0.52

group(1-5).

given(exactly(rel(12/100, 1-5), 1-5, and(baseball, soccer))).
given(exactly(rel(29/100, 1-5), 1-5, baseball)).
given(exactly(rel(19/100, 1-5), 1-5, soccer)).
given(exactly(rel(10/100, 1-5), 1-5, and(gymnastics, soccer))).
given(exactly(rel(14/100, 1-5), 1-5, and(baseball, gymnastics))).
given(exactly(rel(28/100, 1-5), 1-5, gymnastics)).
given(exactly(rel(8/100, 1-5), 1-5, and(baseball, and(gymnastics, soccer)))).

take(1-5, 2-3, 1).

probability(and(none(2-3, gymnastics), and(none(2-3, soccer), none(2-3, baseball)))).

property(gym, [gymnastics]).
property(soccer, [soccer]).
property(baseball, [baseball]).

